from django.db import models

# Create your models here.
class TuVan(models.Model):
    customerTel = models.CharField(max_length=20)
    symptoms = models.CharField(max_length=100)
    workingEnvironment = models.CharField(max_length=100)
    workingYear = models.CharField(max_length=100)
    kilometer = models.CharField(max_length=100)
    lastMaintenance = models.CharField(max_length=100)
    problem = models.CharField(max_length=100)
