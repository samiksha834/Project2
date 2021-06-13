import pymysql

#Connection Object
mydb = pymysql.connect(host="localhost",port=3306,user="root",database="2pmquizapp")

#Cursor object
mycursor = mydb.cursor()