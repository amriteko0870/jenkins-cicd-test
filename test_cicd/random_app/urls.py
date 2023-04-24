from django.urls import path
import random_app.views as views
urlpatterns = [
    path('', views.index),
]