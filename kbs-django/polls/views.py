import requests
from django.shortcuts import render
from django.shortcuts import render
from django.http import HttpResponse
from rest_framework.response import Response
from rest_framework import status

from .forms import *
# Create your views here.
def home(request):
	return render(request, 'index.html')

def demo(request):
	return render(request, 'demo.html')

def feedback(request):
	if request.GET:
		customerTel = request.GET['customerTel']
		error = ""

		if 'error' in request.GET and (request.GET['error_text'] == ""):
			error = request.GET['error']
		else:
			error = request.GET['error_text']
		solution = request.GET['solution']
		# 'localhost:8080/api/v1/kbs/add-case?customerTel=123&error=Loi dieu hoa&solution=mang ra gara'
		url = 'http://localhost:8080/api/v1/kbs/add-case?customerTel={}&error={}&solution={}'.format(customerTel, error, solution)
		response = requests.get(url)
		return render(request, 'thanks.html')
			

	form = GetUnknownCaseForm(request.POST)
	return render(request, 'feed_back.html', {'form': form})

def tuvan(request):
	if request.GET:
		form = TuVanForm(request.GET)
		print(request.GET)
		# get data from form
		customerTel = request.GET['customerTel']
		# get list symptoms
		symptoms = request.GET.getlist('symptoms')
		if (len(symptoms) > 3):
			symptoms = symptoms[:3]
		workingEnvironment = request.GET['workingEnvironment']
		workingYear = request.GET['workingYear']
		kilometer = request.GET['kilometer']
		lastMaintenance = request.GET['lastMaintenance']
		problem = request.GET['problem']
		url = 'http://localhost:8080/api/v1/kbs/solution?symptoms={}&workingEnvironment={}&workingYear={}&kilometer={}&lastMaintenanceTime={}&problem={}&customerTel={}'.format(','.join(symptoms), workingEnvironment, workingYear, kilometer, lastMaintenance, problem, customerTel)
		response = requests.get(url).json()
		if response['similarity_point'] < 0.7:
			return render(request, 'unknown_case.html')
		print(response)
		return render(request, 'ket_qua_tu_van.html', {'response': response})

		
	form = TuVanForm(request.POST)
	print(request.POST)
	return render(request, 'tu_van.html', {'form': form})