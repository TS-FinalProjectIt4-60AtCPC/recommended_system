from django.db import models
from django_pandas.managers import DataFrameManager

# Create your models here.
class Movie(models.Model):
    movieId = models.TextField(max_length=6,primary_key=True)
    title = models.TextField(max_length=100)
    genres = models.TextField(max_length=150)

    class Meta:
        db_table = "movies"
