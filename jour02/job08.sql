import mysql.connector

class ZooManager:
    def __init__(self, host, user, password, database):
        try:
            self.conn = mysql.connector.connect(
                host=host,
                user=user,
                password=password,
                database=database
            )
            self.cursor = self.conn.cursor()
            print("Connexion à la base de données réussie.")
        except mysql.connector.Error as err:
            print("Erreur de connexion à la base de données:", err)

    def create_tables(self):
        try:
            self.cursor.execute("""
                CREATE TABLE IF NOT EXISTS animal (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    nom VARCHAR(255),
                    race VARCHAR(255),
                    id_cage INT,
                    date_naissance DATE,
                    pays_origine VARCHAR(255)
                )
            """)
            self.cursor.execute("""
                CREATE TABLE IF NOT EXISTS cage (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    superficie DECIMAL(10, 2),
                    capacite_max INT
                )
            """)
            print("Tables créées avec succès.")
        except mysql.connector.Error as err:
            print("Erreur lors de la création des tables:", err)

    # Ajouter d'autres méthodes pour gérer les opérations CRUD sur les animaux et les cages

    def close_connection(self):
        if hasattr(self, 'cursor') and self.cursor:
            self.cursor.close()
        if hasattr(self, 'conn') and self.conn:
            self.conn.close()
        print("Connexion à la base de données fermée.")

# Utilisation de la classe ZooManager
zoo_manager = ZooManager("localhost", "Aaron", "Aaron07!", "zoo")
zoo_manager.create_tables()

# Fermeture de la connexion à la fin
zoo_manager.close_connection()