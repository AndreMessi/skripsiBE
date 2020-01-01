from flask import Flask, jsonify, request
from flask_cors import CORS

import mysql.connector

db = mysql.connector.connect(
  host='localhost',
  user='root',
  passwd='',
  database='service_category'
)

app = Flask('category-service')
CORS(app)


@app.route('/', methods=['GET'])
def category():
  cursor = db.cursor(dictionary=True)
  cursor.execute("SELECT * FROM category")
  category = cursor.fetchall()
  return jsonify(category)


@app.route('/<id>', methods=['GET'])
def categoryId(id):
  cursor = db.cursor(dictionary=True)
  cursor.execute('SELECT * FROM category WHERE id='+id)
  categoryId = cursor.fetchall()
  return jsonify(categoryId[0])


@app.route('/', methods=['POST'])
def create():
  category = request.get_json()
  cursor = db.cursor(dictionary=True)
  query = 'INSERT INTO category (title) VALUES ("%s")' % (category['title'])
  cursor.execute(query)
  db.commit()
  return jsonify({'message': 'success', 'data': category})

@app.route('/', methods=['PUT'])
def update():
  sql = 'SELECT id FROM berita ORDER BY id DESC LIMIT 1'
  category = request.get_json()
  cursor = db.cursor(dictionary=True)
  #query = 'UPDATE category SET title='%s', author='%s', tglPost='%s', isicategory='%s' WHERE id=%s'
  #cursor.execute(query, sql)
  db.commit()
  return jsonify({'message': 'success', 'data': category})

@app.route('/', methods=['DELETE'])
def delete():
  category = request.get_json()
  cursor = db.cursor(dictionary=True)
  query = 'DELETE FROM catgory WHERE id=%s'
  cursor.execute(query)
  db.commit()
  return jsonify({'message': 'success', 'data': category})

app.run(port=8001, debug=True)
