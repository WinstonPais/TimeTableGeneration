from django.shortcuts import render
from mainapp.mainCode import getTT
# Create your views here.
def index(req):
    return render(req,'index.html')

def timetabledisp(req):
    TTList,classList,facultyList,FTTList=getTT()
    classLength=range(len(classList))
    facultyLength=range(len(facultyList))
    range5=range(5)
    range7=range(7)
    daysList=["MON","TUE","WED","THU","FRI"]
    myDict={'timetables':TTList,'cl':classList,'dl':daysList,'noOfClasses':classLength,'range5':range5,'range7':range7,'ftimetables':facultyList,'fl':FTTList,'facultylen':facultyLength}
    return render(req,'timetable.html',context=myDict)

def input(req):
    if req.method == 'POST':
        staff_id=req.POST.getlist('staff_id')
        sub_id=req.POST.getlist('sub_id')
        day=req.POST.getlist('day')
        hr=req.POST.getlist('hr')
        cls=req.POST.getlist('class')
        print(staff_id,sub_id)
    return render(req,'input.html')
