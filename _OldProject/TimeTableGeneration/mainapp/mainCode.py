# -*- coding: utf-8 -*-
"""
Created on Sat Jan 25 18:24:12 2020

@author: winst
"""

import psycopg2

daysList=["MON","TUE","WED","THU","FRI"]
conn=psycopg2.connect(
    database="timeTableGeneration",
    user="postgres",
    password="qwerty12345",
    host="localhost",
    port="5432"
    )
conn.autocommit = True
# print("connected to postgres")


# class Theory():
#     def __init__(self,subid,day,hour,lecName):
#         self.subid=subid
#         self.day=day
#         self.hour=hour
#         self.lecName=lecName
#
#
#     def __str__(self):
#         retStr="subject id:"+str(self.subid)+"\nDay:"+str(self.day)+"\nHour:"+str(self.hour)+"\nLecturer Name:"+str(self.lecName)
#         return retStr

'''
delete from subjects_ctt;
delete from subjects_stt;
delete from class_time_table;
delete from staff_time_table;
SELECT SETVAL((SELECT pg_get_serial_sequence('class_time_table', 'ctt_id')), 1, false);
SELECT SETVAL((SELECT pg_get_serial_sequence('staff_time_table', 'stt_id')), 1, false);
'''
def resetCounters():
    cur=conn.cursor()
    cur.execute("SELECT SETVAL((SELECT pg_get_serial_sequence('class_time_table', 'ctt_id')), 1, false)")
    cur.execute("SELECT SETVAL((SELECT pg_get_serial_sequence('staff_time_table', 'stt_id')), 1, false)")
    cur.close()

def resetTables():
    cur=conn.cursor()

    cur.execute("delete from staffdetails_ctt")
    cur.execute("delete from subjects_ctt")
    cur.execute("delete from subjects_stt")
    cur.execute("delete from class_time_table")
    cur.execute("delete from staff_time_table")

    cur.close()
    resetCounters()

# def addinputNoSubject(staff_id,day,period,class_id):
#     cur=conn.cursor()
#     cur.execute("insert into staff_time_table (staff_id,day,period,class_id) values ('"+str(staff_id)+"','"+str(day)+"',"+period+",'"+str(class_id)+"')")
#     cur.close()

def addInputNoStaff(sub_id,day,period,class_id):
    cur=conn.cursor()
    #class_time_table
    #ctt_id,staff_id,sub_id,day,period,class_id
    cur.execute("insert into class_time_table (sub_id,day,period,class_id) values ('"+str(sub_id)+"','"+str(day)+"',"+str(period)+",'"+str(class_id)+"') ")
    cur.execute("select ctt_id from class_time_table where sub_id='"+str(sub_id)+"' and day='"+str(day)+"' and period="+str(period)+" and class_id='"+str(class_id)+"'")
    ctt_id=cur.fetchall()[0][0]
    cur.execute("insert into subjects_ctt values('"+str(sub_id)+"',"+str(ctt_id)+")")

    cur.close()


def addInputWithStaffAndSubject(staff_id,sub_id,day,period,class_id):
    cur=conn.cursor()
    cur.execute("insert into class_time_table (staff_id,sub_id,day,period,class_id) values ('"+str(staff_id)+"','"+str(sub_id)+"','"+str(day)+"',"+str(period)+",'"+str(class_id)+"') ")
    cur.execute("select ctt_id from class_time_table where staff_id='"+str(staff_id)+"' and sub_id='"+str(sub_id)+"' and day='"+str(day)+"' and period="+str(period)+" and class_id='"+str(class_id)+"'")
    ctt_id=cur.fetchall()[0][0]
    cur.execute("insert into subjects_ctt values('"+str(sub_id)+"',"+str(ctt_id)+")")
    cur.execute("insert into staff_time_table (staff_id,sub_id,day,period,class_id) values ('"+str(staff_id)+"','"+str(sub_id)+"','"+str(day)+"',"+str(period)+",'"+str(class_id)+"') ")
    cur.execute("select stt_id from staff_time_table where staff_id='"+str(staff_id)+"' and sub_id='"+str(sub_id)+"' and day='"+str(day)+"' and period="+str(period)+" and class_id='"+str(class_id)+"'")
    stt_id=cur.fetchall()[0][0]
    cur.execute("insert into subjects_stt values('"+str(sub_id)+"',"+str(stt_id)+")")
    cur.execute("insert into staffdetails_ctt values('"+str(staff_id)+"',"+str(ctt_id)+")")

    cur.close()

def getClassTimeTable(class_id):
    retList=[]
    # retString=str(class_id)+"\n"
    # print(class_id)
    cur=conn.cursor()
    # retString+="   \t1    \t2    \t3    \t4    \t5    \t6    \t7"+"\n"
    # print("   \t1    \t2    \t3    \t4    \t5    \t6    \t7")
    for day in daysList:
        dayList=[]
        # retString+=day+"\t"
        # print(day+"\t",end="")
        for period in range(1,8):
            cur.execute("select sub_id from class_time_table where class_id='"+class_id+"' and day='"+day+"' and period="+str(period))

            try:                                        #if cur is empty, then fetching will throw an error
                # print(cur.fetchone()[0]+"\t",end="")
                # retString+=cur.fetchone()[0]+"\t"
                dayList.append(cur.fetchone()[0])
            except:
                # retString+="NULL\t"
                dayList.append("NULL")
                # print("NULL\t",end="")
        # print()
        # retString+="\n"
        retList.append(dayList)
    # print("-----------------------------------------------------------")
    cur.close()
    # print(retString)
    return retList

def getStaffTimeTable(staff_id):
    retList=[]
    # retString=str(class_id)+"\n"
    # print(class_id)
    cur=conn.cursor()
    # retString+="   \t1    \t2    \t3    \t4    \t5    \t6    \t7"+"\n"
    # print("   \t1    \t2    \t3    \t4    \t5    \t6    \t7")
    for day in daysList:
        dayList=[]
        # retString+=day+"\t"
        # print(day+"\t",end="")
        for period in range(1,8):
            cur.execute("select sub_id from staff_time_table where staff_id='"+staff_id+"' and day='"+day+"' and period="+str(period))

            try:                                        #if cur is empty, then fetching will throw an error
                # print(cur.fetchone()[0]+"\t",end="")
                # retString+=cur.fetchone()[0]+"\t"
                dayList.append(cur.fetchone()[0])
            except:
                # retString+="NULL\t"
                dayList.append("NULL")
                # print("NULL\t",end="")
        # print()
        # retString+="\n"
        retList.append(dayList)
    # print("-----------------------------------------------------------")
    cur.close()
    # print(retString)
    return retList

def addinput():
    # addInputWithStaffAndSubject(staff_id,sub_id,day,period,class_id)
    addInputWithStaffAndSubject("KKM","CPS","TUE",4,"F")
    addInputWithStaffAndSubject("KKM","CPS","WED",2,"F")
    addInputWithStaffAndSubject("KKM","CPS","THU",1,"F")
    addInputWithStaffAndSubject("KKM","CPS","FRI",5,"F")

    addInputWithStaffAndSubject("SPS","CPS","MON",5,"G")
    addInputWithStaffAndSubject("SPS","CPS","WED",4,"G")
    addInputWithStaffAndSubject("SPS","CPS","THU",2,"G")
    addInputWithStaffAndSubject("SPS","CPS","FRI",1,"G")

    addInputWithStaffAndSubject("TYN","CPS","MON",2,"H")
    addInputWithStaffAndSubject("TYN","CPS","TUE",5,"H")
    addInputWithStaffAndSubject("TYN","CPS","WED",1,"H")
    addInputWithStaffAndSubject("TYN","CPS","FRI",4,"H")

    addInputWithStaffAndSubject("SVG","CPS","MON",3,"I")
    addInputWithStaffAndSubject("SVG","CPS","TUE",2,"I")
    addInputWithStaffAndSubject("SVG","CPS","WED",1,"I")
    addInputWithStaffAndSubject("SVG","CPS","THU",5,"I")

    addInputNoStaff("MAT-III", "MON", 1, "3A")
    addInputNoStaff("KAN", "MON", 6, "3A")
    addInputNoStaff("MAT-III", "TUE", 4, "3A")
    addInputNoStaff("V-ACT", "WED", 6, "3A")
    addInputNoStaff("V-ACT", "WED", 7, "3A")
    addInputNoStaff("MAT-III", "THU", 2, "3A")
    addInputNoStaff("MAT-III", "FRI", 5, "3A")

    addInputNoStaff("KAN", "MON", 7, "3B")
    addInputNoStaff("MAT-III", "TUE", 5, "3B")
    addInputNoStaff("MAT-III", "WED", 1, "3B")
    addInputNoStaff("V-ACT", "WED", 3, "3B")
    addInputNoStaff("V-ACT", "WED", 4, "3B")
    addInputNoStaff("MAT-III", "THU", 3, "3B")
    addInputNoStaff("KAN", "THU", 7, "3B")
    addInputNoStaff("MAT-III", "FRI", 2, "3B")

    
def getTT():
    addinput()
    classList=["3A","3B","F","G","H","I"]
    TTList=[]
    for classname in classList:
        TTList.append(getClassTimeTable(classname))
    # TTList.append(getClassTimeTable("3B"))

    facultyList=["KKM","SPS","TYN","SVG"]
    FTTList=[]
    for staff_id in facultyList:
        FTTList.append(getStaffTimeTable(staff_id))

    resetTables()
    # print(FTTList)
    return TTList,classList,FTTList,facultyList
