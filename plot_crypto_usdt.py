import mysql.connector
import matplotlib.pyplot as plt
import datetime

# Connexion à la base de données MariaDB
conn = mysql.connector.connect(
    host="51.83.68.96",
    user="akkari",  # Remplace par ton utilisateur MariaDB
    password="20051002",  # Remplace par ton mot de passe
    database="crypto_db"  # Remplace par le nom de ta base de données
)
cursor = conn.cursor()

# Récupérer la liste des cryptos disponibles
cursor.execute("SHOW TABLES")
tables = [table[0] for table in cursor.fetchall()]

# Création du graphique
plt.figure(figsize=(12, 6))

for table in tables:
    cursor.execute("SELECT date, price FROM usdt_prices ORDER BY date ASC")
    data = cursor.fetchall()

    if data:
        dates, prices = zip(*data)
        dates = [datetime.datetime.strptime(str(date), "%Y-%m-%d %H:%M:%S") for date in dates]

        plt.plot(dates, prices, label=table)

# Configuration du graphique
plt.xlabel("Date")
plt.ylabel("Prix en USD")
plt.title("Évolution du prix des cryptomonnaies")
plt.xticks(rotation=45)
plt.grid()
plt.savefig("usdt.png")

# Afficher le graphique
plt.show()

# Fermer la connexion
cursor.close()
conn.close()
