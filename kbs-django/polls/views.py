import requests
from django.shortcuts import render
from django.shortcuts import render
from django.http import HttpResponse
from rest_framework.response import Response
from rest_framework import status

from .forms import TuVanForm
# Create your views here.
def home(request):
	return render(request, 'slide_bar.html')

def demo(request):
	return render(request, 'demo.html')

def feedback(request):
	return render(request, 'feed_back.html')

def solution(request):
	return render(request, 'solution.html')

def form(request):
	symptoms = request.POST['symptoms']
	working_environments = request.POST['working_environments']
	working_years = request.POST['working_years']
	kilometers = request.POST['kilometers']
	last_maintenace_times = request.POST['last_maintenace_times']
	problems = request.POST['problems']
	return Response({"status": "success", "data": symptoms}, status=status.HTTP_200_OK)

def tuvan(request):
	if request.GET:
		form = TuVanForm(request.GET)
		print(request.GET)
		# get data from form
		customerTel = request.GET['customerTel']
		# get list symptoms
		symptoms = request.GET.getlist('symptoms')
		workingEnvironment = request.GET['workingEnvironment']
		workingYear = request.GET['workingYear']
		kilometer = request.GET['kilometer']
		lastMaintenance = request.GET['lastMaintenance']
		problem = request.GET['problem']
		url = 'http://localhost:8080/api/v1/kbs/solution?symptoms={}&workingEnvironment={}&workingYear={}&kilometer={}&lastMaintenanceTime={}&problem={}&customerTel={}'.format(','.join(symptoms), workingEnvironment, workingYear, kilometer, lastMaintenance, problem, customerTel)
		response = requests.get(url).json()
		return render(request, 'ket_qua_tu_van.html', {'response': response})

		
	form = TuVanForm(request.POST)
	print(request.POST)
	return render(request, 'tu_van.html', {'form': form})
