from django.shortcuts import render

# Create your views here.
def index(request):
    return render(request, 'mainapp/index.html')

def input(request):
    return render(request, 'mainapp/input.html')
