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
    # classList=["3A","3B"]
    daysList=["MON","TUE","WED","THU","FRI"]
    # print(a)
    # print(len(a),length,range5,range7)

    myDict={'timetables':TTList,'cl':classList,'dl':daysList,'noOfClasses':classLength,'range5':range5,'range7':range7,'ftimetables':facultyList,'fl':FTTList,'facultylen':facultyLength}
    return render(req,'timetable.html',context=myDict)
