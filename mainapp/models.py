from django.db import models
from django.contrib.auth.models import User
# Create your models here.

class subjectTable(models.Model):
    subCode = models.TextField(primary_key=True)
    subName = models.TextField()
    semester = models.IntegerField()
    isLab = models.BooleanField(default=False)

    def __str__(self):
        return subCode

class staffDetails(models.Model):
    staffId = models.TextField(primary_key=True)
    subName = models.TextField()

    def __str__(self):
        return staffId

class classTimeTable(models.Model):
    staffId = models.ForeignKey(staffDetails,on_delete=models.CASCADE)
    subCode = models.ForeignKey(subjectTable,on_delete=models.CASCADE)
    day = models.TextField()
    period = models.IntegerField()
    classId = models.TextField()

    def __str__(self):
        return str(staffID)+" "+str(subCode)+" "+str(day)+" "+str(period)+" "+str(classId)

class staffTimeTable(models.Model):
    staffId = models.ForeignKey(staffDetails,on_delete=models.CASCADE)
    subCode = models.ForeignKey(subjectTable,on_delete=models.CASCADE)
    day = models.TextField()
    period = models.IntegerField()
    classId = models.TextField()

    def __str__(self):
        return str(staffID)+" "+str(subCode)+" "+str(day)+" "+str(period)+" "+str(classId)
