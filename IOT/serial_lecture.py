##########################
# Author : Haidara
# date : 04/01/2019
##########################

#il faut installer pip install  pymysql
from serial import Serial
import urllib3
import requests
import pymysql.cursors
from time import gmtime, strftime
serial_port = Serial(port='COM23', baudrate=9600)

rq = requests.get("https://iotcours.000webhostapp.com/delay.php")
delay = rq.text 
#print (delay)
serial_port.write(b'' + delay.encode())
while True:

    message = serial_port.readline()
    message = message[:3]
    message = int(message)
    date    = strftime("%Y-%m-%d %H:%M:%S", gmtime())
    # print(message)
        # Connect to the database
    connection = pymysql.connect(host='sql7.freemysqlhosting.net',
                                user='sql7288197',
                                port= 3306,
                                password='mW8z3z9cNa',
                                db='sql7288197',
                                # charset='utf8mb4',
                                cursorclass=pymysql.cursors.DictCursor)

    try:
        with connection.cursor() as cursor:
                # Create a new record
                sql = "INSERT INTO `tp` (id,`distance`, `date`, `statut`) VALUES (NULL,%s, %s,%s)"
                cursor.execute(sql, (message,date, 1))
                connection.commit()
    finally:
        connection.close()
    
    


    

