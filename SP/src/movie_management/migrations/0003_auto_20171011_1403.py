# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-10-11 07:03
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('movie_management', '0002_auto_20171011_1400'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='movie',
            name='id',
        ),
        migrations.AlterField(
            model_name='movie',
            name='movie_id',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
    ]
