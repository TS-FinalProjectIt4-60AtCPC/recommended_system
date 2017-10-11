from rest_framework import serializers
from movie_management.models import Movie

class MovieSerializers(serializers.ModelSerializer):
    class Meta:
        model = Movie
        # fields = '__all__'
        fields = ('movieId', 'title', 'genres')
