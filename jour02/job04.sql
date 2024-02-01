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

# Exécuter la requête pour récupérer les noms et les capacités des salles
cursor.execute("SELECT nom, capacite FROM salle")

# Récupérer tous les résultats
salles = cursor.fetchall()

# Afficher les résultats
print(salles)

# Fermer le curseur et la connexion
cursor.close()
conn.close()