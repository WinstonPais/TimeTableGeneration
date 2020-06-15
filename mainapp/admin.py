from django.contrib import admin
from mainapp.models import subjectTable,staffDetails,classTimeTable,staffTimeTable
# Register your models here.

'''
username:admin
password:test
'''

admin.site.register(subjectTable)
admin.site.register(staffDetails)
admin.site.register(classTimeTable)
admin.site.register(staffTimeTable)
