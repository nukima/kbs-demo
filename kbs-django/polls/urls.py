from django.contrib import admin
from django.urls import path
from django.conf.urls.static import static
from django.conf import settings

from . import views

urlpatterns = [
path("home", views.home),
path("feed_back", views.feedback, name="feed_back"),
path("tuvan", views.tuvan, name="tuvan"),
]

urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)