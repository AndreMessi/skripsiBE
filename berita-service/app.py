from flask import Flask, jsonify, request
from flask_cors import CORS

import mysql.connector

db = mysql.connector.connect(
  host='localhost',
  user='root',
  passwd='',
  database='service_berita'
)

app = Flask('berita-service')
CORS(app)


@app.route('/', methods=['GET'])
def berita():
  cursor = db.cursor()
  cursor.execute("SELECT * FROM berita")
  getBerita = cursor.fetchall()
  return jsonify(getBerita)


@app.route('/<id>', methods=['GET'])
def beritaId(id):
  cursor = db.cursor()
  cursor.execute('SELECT * FROM berita WHERE id='+id)
  beritaId = cursor.fetchall()
  return jsonify(beritaId[0])


@app.route('/', methods=['POST'])
def create():
  berita = request.get_json()
  cursor = db.cursor()
  query = 'INSERT INTO berita (title, author, tglPost, isiBerita) VALUES ("%s", "%s", "%s", "%s")' % (berita['title'], berita['author'], berita['tglPost'], berita['isiBerita'])
  cursor.execute(query)
  db.commit()
  return jsonify({'message': 'success', 'data': berita})

@app.route('/', methods=['PUT'])
def update():
  sql = 'SELECT id FROM berita ORDER BY id DESC LIMIT 1'
  berita = request.get_json()
  cursor = db.cursor()
  #query = 'UPDATE berita SET title='%s', author='%s', tglPost='%s', isiBerita='%s' WHERE id=%s'
  #cursor.execute(query, sql)
  db.commit()
  return jsonify({'message': 'success', 'data': berita})

@app.route('/', methods=['DELETE'])
def delete():
  berita = request.get_json()
  cursor = db.cursor()
  query = 'DELETE FROM berita WHERE id=%s'
  cursor.execute(query)
  db.commit()
  return jsonify({'message': 'success', 'data': berita})

app.run(port=8000, debug=True)