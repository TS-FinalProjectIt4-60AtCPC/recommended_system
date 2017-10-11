from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from movie_management.models import Movie
from movie_management.serializers import MovieSerializers
from rest_framework import viewsets, routers
from rest_framework.decorators import detail_route, list_route
from rest_framework.permissions import IsAuthenticated
from rest_framework.parsers import JSONParser
from rest_pandas import PandasSimpleView
import pandas as pd

# Create your views here.
class MovieViewSet(viewsets.ModelViewSet):
    queryset = Movie.objects.all()
    serializer_class = MovieSerializers
    permission_classes = (IsAuthenticated,)
    parser_classes = (JSONParser,)

def movie(request):
    movie = Movie.objects.all()
    return render(request, 'index.html', {'movie': movie})

# @list_route(methods=['get'])
# def all_movies(self, request):
#     movie = Movie.objects.values_list('title', flat=True).distinct()
#     return Response(movie, status=status.HTTP_200_OK)
