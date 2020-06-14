# TimeTableGeneration
A web application to generate faculty and class time tables

## Installation
To create a conda environment run the below command
```
conda create --name timetablegen --file conda-requirements.txt
```
To activate this environment
```
activate timetablegen
```
**Note**
if you have installed a new package run this command to call it to the requirements.txt file
```
conda list -e > conda-requirements.txt
pip freeze > requirements.txt
```

## Running the project
To run this Project enter the command
```
python manage.py runserver
```
