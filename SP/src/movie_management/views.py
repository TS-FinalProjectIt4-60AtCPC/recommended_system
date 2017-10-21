from django.http import HttpResponse
from django.template import loader
from movie_management.controls import get_all_movies, get_recommend_movies, get_detail, get_category
# import pandas as pd


def index(request):
    template = loader.get_template('movie/index.html')
    category = "Adventure"
    context = {
        'all_movies': get_all_movies(request),
        'category_movies': get_category(self)
    }
    print(context)
    return HttpResponse(template.render(context, request))


def detail(request, movieId):
    movie_detail = get_detail(request, movieId)
    html = ''
    html += 'Details for movie id: ' + str(movieId) + '<br>'
    html += 'Title: ' + movie_detail.title + '<br>'
    html += 'Genres : ' + movie_detail.genres
    return HttpResponse(html)



