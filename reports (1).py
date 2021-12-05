import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="musicstore"
)

mycursor = mydb.cursor()

sql = "SELECT music_store.music_id, music_store.music_name, tracks.track_name 
FROM music_store 
INNER JOIN tracks
 ON music_store.music_id = tracks.track_id;"


mycursor.execute(sql)

myresult = mycursor.fetchall()

for x in myresult:
  print(x)