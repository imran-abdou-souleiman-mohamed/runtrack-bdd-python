import mysql.connector

# Se connecter à la base de données
conn = mysql.connector.connect(
    host="localhost",
    user="imran",
    password="Oubadioubadi13",
    database="LaPlateforme"
)

# Créer un curseur pour exécuter des requêtes SQL
cursor = conn.cursor()

# Exécuter la requête pour calculer la superficie totale des étages
cursor.execute("SELECT SUM(superficie) FROM etage")

# Récupérer le résultat
superficie_totale = cursor.fetchone()[0]

# Afficher le résultat
print(f"La superficie de La Plateforme est de {superficie_totale} m2")

# Fermer le curseur et la connexion
cursor.close()
conn.close()