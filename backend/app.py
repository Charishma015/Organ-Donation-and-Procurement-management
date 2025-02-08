from flask import Flask, request, jsonify
import mysql.connector

app = Flask(__name__)

db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database="organ_donation"
)
cursor = db.cursor()

@app.route('/')
def home():
    return "Welcome to the Organ Donation System"

@app.route('/add_user', methods=['POST'])
def add_user():
    data = request.json
    query = "INSERT INTO user_information (USER_ID, NAME, DATE_OF_BIRTH, PHONE_NUMBER) VALUES (%s, %s, %s, %s)"
    values = (data['USER_ID'], data['NAME'], data['DATE_OF_BIRTH'], data['PHONE_NUMBER'])
    cursor.execute(query, values)
    db.commit()
    return jsonify({"message": "User added successfully"})

if __name__ == '__main__':
    app.run(debug=True)
