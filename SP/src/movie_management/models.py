from django.db import models


class User(models.Model):
    userId = models.IntegerField(primary_key=True)
    username = models.TextField(max_length=250)
    password = models.TextField(max_length=256)

    class Meta:
        db_table = 'users'

    def __str__(self):
        return self.username + ' - ' + self.password


class Movie(models.Model):
    movieId = models.IntegerField(primary_key=True)
    title = models.TextField(max_length=250)
    genres = models.TextField(max_length=250)

    class Meta:
        db_table = 'movies'

    def __str__(self):
        return self.title + ' - ' + self.genres


class Rating(models.Model):
    userId = models.ForeignKey(User, to_field="userId", db_column="userId", on_delete=models.CASCADE)
    movieId = models.ForeignKey(Movie, to_field="movieId", db_column="movieId", on_delete=models.CASCADE)
    rating = models.FloatField()
    timestamp = models.DateTimeField()

    class Meta:
        db_table = 'ratings'
