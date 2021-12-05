import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="musicstore"
)

mycursor = mydb.cursor()

mycursor.execute("SELECT * FROM music_album")

myresult = mycursor.fetchall()

for x in myresult:
  print(x)