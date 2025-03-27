import requests
import mysql.connector
from mysql.connector import Error

# URL de l'API CoinGecko
url = 'https://api.coingecko.com/api/v3/coins/markets'

# Paramètres pour récupérer les cryptos en USD
params = {
    'vs_currency': 'usd',
    'order': 'market_cap_desc',
    'per_page': 10,
    'page': 1,
    'sparkline': 'false'
}

# Fonction de connexion à MariaDB
def connect_db():
    try:
        connection = mysql.connector.connect(
            host='51.83.68.96',
            database='crypto_db',
            user='akkari',  # Remplace avec ton utilisateur MariaDB
            password='20051002'  # Remplace avec ton mot de passe MariaDB
        )
        if connection.is_connected():
            return connection
    except Error as e:
        print(f"Erreur de connexion à MariaDB : {e}")
        return None

# Fonction pour créer la table crypto_prices si elle n'existe pas
def create_crypto_table(cursor):
    cursor.execute("""
        CREATE TABLE IF NOT EXISTS crypto_prices (
            id INT AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR(50),
            symbol VARCHAR(10),
            price DECIMAL(15, 2),
            change_1h DECIMAL(5, 2),
            change_24h DECIMAL(5, 2),
            change_7d DECIMAL(5, 2),
            date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        );
    """)

# Envoi de la requête à l'API
response = requests.get(url, params=params)

if response.status_code == 200:
    data = response.json()
    
    # Connexion à la base de données
    connection = connect_db()
    if connection:
        cursor = connection.cursor()
        
        # Création de la table si elle n'existe pas
        create_crypto_table(cursor)

        print("Mise à jour des cryptos... Suppression des anciennes données...\n")

        # 🔴 Supprimer toutes les anciennes données
        try:
            cursor.execute("DELETE FROM crypto_prices")
            connection.commit()
            print("Anciennes données supprimées.")
        except Error as e:
            print(f"Erreur lors de la suppression des anciennes données : {e}")

        # 🔵 Insertion des nouvelles données
        print("Insertion des nouvelles données...\n")

        for coin in data:
            name = coin['name']
            symbol = coin['symbol'].upper()
            price = coin['current_price']
            change_1h = coin.get('price_change_percentage_1h', None)
            change_24h = coin.get('price_change_percentage_24h', None)
            change_7d = coin.get('price_change_percentage_7d', None)

            try:
                cursor.execute("""
                    INSERT INTO crypto_prices (name, symbol, price, change_1h, change_24h, change_7d)
                    VALUES (%s, %s, %s, %s, %s, %s)
                """, (name, symbol, price, change_1h, change_24h, change_7d))
                connection.commit()
            except Error as e:
                print(f"Erreur d'insertion des données pour {name} : {e}")

        cursor.close()
        connection.close()
        print("Données mises à jour avec succès !")

else:
    print(f"Erreur API : {response.status_code}")
