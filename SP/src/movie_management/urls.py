from django.conf import settings
from django.conf.urls.static import static
from django.conf.urls import url
from . import views


urlpatterns = [
    # /movie_management/
    url(r'^$', views.index, name="index"),
    # /movie_management/{id}
    url(r'^(?P<movieId>[0-9]+)/$', views.detail, name="detail"),
]

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
