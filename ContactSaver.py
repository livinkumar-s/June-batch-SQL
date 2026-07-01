# mysql-connectror-python
import mysql.connector

connection=mysql.connector.connect(
    host='localhost',
    user='root',
    password="12345",
    database="contactsaver"
)

cursor=connection.cursor()

# cursor.execute("SELECT * FROM contacts")
# print(cursor.fetchall())

# cursor.execute("INSERT INTO contacts (name,mail,phone) VALUES (%s,%s,%s)",["Raj","raj@gmail.com","8839988766"])
# connection.commit()
# print("Done")

# cursor.execute("UPDATE contacts SET mail=%s WHERE id=%s",("rajkamal@gmail.com",4))
# connection.commit()
# print("Done")

#all contacts 
#search contact
#add contact
#update contact
#delete contact

def addContact():
    name=input("Enter Name: ")
    mail=input("Enter Mail: ")
    phone=input("Enter Phone: ")
    cursor.execute("INSERT INTO contacts (name,mail,phone) VALUES (%s,%s,%s)",[name,mail,phone])
    connection.commit()
    print("Contact is Added")


def getAllContacts():
    cursor.execute("SELECT * FROM contacts")
    for a,b,c,d in cursor.fetchall():
        print(f"Name: {b}, Mail ID: {c}, Phone: {d}")

def getContact():
    searchTerm=input("Search Contact: ")
    cursor.execute("SELECT * FROM contacts where name like %s OR mail like %s OR phone like %s",[f"%{searchTerm}%",f"%{searchTerm}%",f"%{searchTerm}%"])
    fetchedRec=cursor.fetchall()
    if len(fetchedRec)==0:
        print("No Matching results... So search again...!")
        getContact()
    
    else:
        for a,b,c,d in fetchedRec:
            print(f"Name: {b}, Mail ID: {c}, Phone: {d}")


    for a,b,c,d in cursor.fetchall():
        print(f"Name: {b}, Mail ID: {c}, Phone: {d}")

def updateContact():
    searchTerm=input("Search Contact: ")
    cursor.execute("SELECT * FROM contacts where name like %s OR mail like %s OR phone like %s",[f"%{searchTerm}%",f"%{searchTerm}%",f"%{searchTerm}%"])
    fetchedRec=cursor.fetchall()
    if len(fetchedRec)==0:
        print("No Matching results... So search again...!")
        updateContact()
    
    else:
        for a,b,c,d in fetchedRec:
            print(f"Id: {a}, Name: {b}, Mail ID: {c}, Phone: {d}")
        id=int(input("Enter the id of contact you want to update: "))
        cursor.execute("SELECT * FROM contacts WHERE id=%s",[id])
        currentData=cursor.fetchone()
        name=input(f"Enter the name({currentData[1]}):")
        mail=input(f"Enter the mail({currentData[2]}):")
        phone=input(f"Enter the phone({currentData[3]}):")

        updatedName=name if name!="" else currentData[1]
        updatedMail=mail if mail!="" else currentData[2]
        updatedPhone=phone if phone!="" else currentData[3]
        cursor.execute("UPDATE contacts SET mail=%s, name=%s, phone=%s WHERE id=%s",(updatedMail,updatedName,updatedPhone,id))
        connection.commit()
        print("Updated Successfully...!")


def deleteContact():
    pass

while True:
    inp=int(input('''0--> Exit
1--> Add Contact
2--> View all Contact
3--> Search Contact
4--> Update Contact
5--> Delete Contact
Choose an Option: '''))
    
    if inp==0:
        break
    elif inp==1:
        addContact()
    elif inp==2:
        getAllContacts()
    elif inp==3:
        getContact()
    elif inp==4:
        updateContact()
    elif inp==5:
        deleteContact()
    print()
    print()