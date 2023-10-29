# Melakukan import mysql connector
import mysql.connector

# Melakukan percobaan koneksi
conn = mysql.connector.connect(host = 'localhost', user = 'root',
                            password = '', database = 'KALBE')

# Membuat object cursor sebagai penanda
cursor = conn.cursor()

# Deklarasi SQL Query untuk memasukan record ke DB (KARYAWAN)
Insert_sql = (
    "INSERT INTO KARYAWAN (FIRST_NAME, LAST_NAME, AGE, SEX, INCOME)"
    "VALUES (%s, %s, %s, %s, %s)"
)
values = ('Star', 'Butterfly', 18, 'F', 7000000)

try:
    # Eksekusi SQL Command
    cursor.execute(Insert_sql, values)

    # Melakukan perubahan (commit) pada DB
    conn.commit()

except:
    # Roll Back apabila ada issue
    conn.rollback()

# Menutup Koneksi
conn.close()
