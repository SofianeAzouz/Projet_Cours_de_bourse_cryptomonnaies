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

# Fonction pour créer une table secondaire pour une crypto
def create_crypto_table(cursor, symbol):
    table_name = f"{symbol.lower()}_prices"
    cursor.execute(f"""
        CREATE TABLE IF NOT EXISTS {table_name} (
            id INT AUTO_INCREMENT PRIMARY KEY,
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

        print("Mise à jour des cryptos et insertion des prix...\n")

        for coin in data:
            name = coin['name']
            symbol = coin['symbol'].upper()
            price = coin['current_price']
            change_1h = coin.get('price_change_percentage_1h', None)
            change_24h = coin.get('price_change_percentage_24h', None)
            change_7d = coin.get('price_change_percentage_7d', None)

            # 1️⃣ Ajouter la crypto à la table principale `cryptos`
            try:
                cursor.execute("""
                    INSERT INTO cryptos (name, symbol) VALUES (%s, %s)
                    ON DUPLICATE KEY UPDATE name=name;
                """, (name, symbol))
                connection.commit()
            except Error as e:
                print(f"Erreur d'insertion dans cryptos : {e}")

            # 2️⃣ Créer une table secondaire si elle n'existe pas
            create_crypto_table(cursor, symbol)

            # 3️⃣ Insérer le prix du jour dans la table correspondante
            table_name = f"{symbol.lower()}_prices"
            try:
                cursor.execute(f"""
                    INSERT INTO {table_name} (price, change_1h, change_24h, change_7d)
                    VALUES (%s, %s, %s, %s)
                """, (price, change_1h, change_24h, change_7d))
                connection.commit()
            except Error as e:
                print(f"Erreur d'insertion dans {table_name} : {e}")

        cursor.close()
        connection.close()
        print("Données insérées avec succès !")

else:
    print(f"Erreur API : {response.status_code}")
