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

def feedback(request):
	if request.GET:
		customerTel = request.GET['customerTel']
		# check if has error
		error = ''
		if 'error' in request.GET:
			error = request.GET['error']
		else:
			error = request.GET['error_text']
		solution = request.GET['solution']
		print(customerTel)
		print(error)
		print(solution)
		# 'localhost:8080/api/v1/kbs/add-case?customerTel=123&error=Loi dieu hoa&solution=mang ra gara'
		url = 'http://localhost:8080/api/v1/kbs/add-case?customerTel={}&error={}&solution={}'.format(customerTel, error, solution)
		requests.get(url)
		return render(request, 'thanks.html')

	form = GetUnknownCaseForm(request.POST)
	return render(request, 'get_unknown.html', {'form': form})

def tuvan(request):
	if request.GET:
		# get data from form
		customerTel = request.GET['customerTel']
		symptoms = request.GET.getlist('symptoms')
		workingEnvironment = request.GET['workingEnvironment']
		workingYear = request.GET['workingYear']
		kilometer = request.GET['kilometer']
		lastMaintenance = request.GET['lastMaintenance']
		problem = request.GET['problem']
		url = 'http://localhost:8080/api/v1/kbs/solution?symptoms={}&workingEnvironment={}&workingYear={}&kilometer={}&lastMaintenanceTime={}&problem={}&customerTel={}'.format(','.join(symptoms), workingEnvironment, workingYear, kilometer, lastMaintenance, problem, customerTel)
		# response = requests.get(url).json()
		response = {
			'error': 'UNKNOWN',
			'solution': 'UNKNOWN',
			'similarity_point': 0.5
		}
		if response['similarity_point'] < 0.7:
			return render(request, 'unknown_case.html', {'response': response})

		return render(request, 'ket_qua_tu_van.html', {'response': response})

		
	form = TuVanForm(request.POST)
	return render(request, 'tu_van.html', {'form': form})
