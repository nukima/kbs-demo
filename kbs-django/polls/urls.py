from django.contrib import admin
from django.urls import path
from django.conf.urls.static import static
from django.conf import settings

from . import views

urlpatterns = [
path("slide_bar.html", views.home),
path("demo.html", views.demo),
path("feed_back.html", views.feedback),
path("solution.html", views.solution),
path("form", views.form),
path("tuvan", views.tuvan, name="tuvan"),
]

urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)