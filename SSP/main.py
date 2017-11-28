from flask import Flask, request, render_template, jsonify
from flask_pymongo import PyMongo

app = Flask(__name__)


app.config['MONGO_DBNAME'] = 'recommend_system'
app.config['MONGO_URI'] = 'mongodb://localhost:27017/recommend_system'

mongo = PyMongo(app)


@app.route('/')
@app.route('/profile/<name>')
def index(name=None):
    if name:
        return render_template("index.html", name=name)
    else:
        return 'Hi iam Vue.js'


@app.route('/movie', methods=['GET'])
def get_all_movie():
    movie = mongo.db.movies
    output = []
    for s in movie.find():
        output.append({'movieId': s['movieId'],
                       'title': s['title'],
                       'genres': s['genres']})
    return jsonify({'result': output})


if __name__ == "__main__":
    app.run(debug=True)
