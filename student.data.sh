#!/bin/bash
#program:write a shell script to accept student number,name,marks in 5 subjects.find total,avg and grade.display the result
#rule1:above or eq 80 'grade a'  rule2:avg>=70 and avg<80 then grade b
#rule3:avg<70 and avg>=60 then grade c   rule4:avg<60 and avg>=50 grade d
#rule5:avg<50 and avg>=40 then grade e   rule6:else grade f


echo "enter student name:"
read name
echo "enter student number:"
read student number
echo "enter student 5 subject marks:"
read m1 m2 m3 m4 m5
totalmarks=$(expr $m1 + $m2 + $m3 + $m4 + $m5)
per=$(expr $totalmarks / 5)
echo "total marks=$totalmarks"
echo "percentage=$per"
echo "enter student name  : $name"
echo "enter student number : $student number"
echo "student total marks:$totalmarks"
echo "enter total percetage:$per"
if [ $per -eq 80 -o $per -gt 80 ]
then
  echo "grade : a"
elif [ $per -ge 70 -o $per -lt 80 ]
then
  echo "grade : b"
elif [ $per -lt 70 -o $per -ge 60 ]
then
  echo "grade :c"
elif [ $per -lt 60 -o $per -ge 50 ]
then
  echo "grade :d"
elif [ $per -lt 50 -o $per -ge 40 ]
then 
  echo "grade :e"
else
 echo "grade :f(fail)"
fi

  
