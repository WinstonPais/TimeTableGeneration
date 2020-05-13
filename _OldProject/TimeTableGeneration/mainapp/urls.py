from django.conf.urls import url
from mainapp import views

#template tagging
app_name = 'mainapp'
urlpatterns=[
    url(r'^timetablePage/$',views.timetabledisp,name='timetablePage'),
    url(r'^inputPage/$',views.input,name='inputPage'),

]
