from django.http.response import HttpResponseRedirect
from django.http import HttpResponse
from django.shortcuts import render
from .models import staffTimeTable,staffDetails,subjectTable,classTimeTable


# Create your views here.
input_list=list()
def index(request):
    return render(request, 'mainapp/index.html')

def input(request):
    staffd = staffDetails.objects.all()
    subjectt = subjectTable.objects.all()   
    if request.method=='POST':
        day = request.POST.getlist('day')
        period = request.POST.getlist('hr')
        for i in range(0,len(period)):
            period[i] =int(period[i])
        classId = request.POST.getlist('class')
        staff_Id=request.POST.getlist('staff_id')
        subjectt_t=request.POST.getlist('sub_id')
        for (a,b,c,d,e) in zip(staff_Id,subjectt_t,day,period,classId):
            staff = staffTimeTable(staffId=staffDetails.objects.get(staffId=(a)),
                                    subCode=subjectTable.objects.get(subCode=(b)), day=c,
                                    period=d, classId=e)
            staff.save()
    return render(request, 'mainapp/input.html', {"staffd": staffd, "subjectt": subjectt})



