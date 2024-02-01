import mysql.connector


conn = mysql.connector.connect(
    host="localhost",
    user="imran",
    password="Oubadioubadi13",
    database="LaPlateforme"
)

cursor = conn.cursor()

cursor.execute("SELECT * FROM etudiant")


students = cursor.fetchall()

for student in students:
    print(student)
    
    
cursor.close()
conn.close()