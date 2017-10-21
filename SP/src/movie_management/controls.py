from movie_management.models import Movie
from django.db import connection


def get_all_movies(request):
    movies_query_set = Movie.objects.all()
    return movies_query_set


def get_recommend_movies(request):
    # Recommend Matrix Algorithms
    # TODO
    return


def get_category(self):
    # movies_query_set = Movie.objects.raw('SELECT * FROM movies WHERE genres , ['%'+category+'%'])
    with connection.cursor() as cursor:
        cursor.execute("SELECT foo FROM bar WHERE genres Like %s", ['%'+self.genres+'%'])
        row = cursor.fetchone()
    return row


def get_detail(request, movieId):
    movie_detail = Movie.objects.get(movieId=movieId)
    return movie_detail
