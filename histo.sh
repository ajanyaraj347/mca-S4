sum=0
n=28
arr=()
while IFS="," read -r rn admno name sub1 sub2 sub3 sub4 sub5 sub6 sub7
do

	sum=$((sub1+sub2+sub3+sub4+sub5+sub6+sub7))
	
	arr+=($sum)

done<mark

#Finding the mean
echo "Total mark of each student : ${arr[@]}"
sum=0
for i in ${arr[*]}
do 
	sum=$((sum+i))

done
mean=$((sum/n))
echo "Mean="$mean


#Finding the SD
sum_sd=0
for i in ${arr[*]}
do
	sum_sq=$((i-mean))
	sum_sq=$((sum_sq*sum_sq))
	sum_sd=$((sum_sd+sum_sq))
done
sd=$((sum_sd/n))
sd=$(echo "sqrt($sd)" | bc)
echo "Standard Deviation : $sd"

printf "\n----------------------------------------------\n"
a=9
b=7
c=5
d=3
e=1
#echo ${arr[3]}

a=$((mean+2*sd))
b=$((mean+sd))
c=$((mean))
d=$((mean-sd))
e=$((mean-2*sd))

a_count=0
b_count=0
c_count=0
d_count=0
e_count=0
fail_count=0
#display grade
rn=1
for i in ${arr[*]}
do 
printf "Roll No : $rn "
rn=$((rn+1))
	if [ $i -gt $a ]
	then
		echo "A"
		a_count=$((a_count+1))
	elif [ $i -gt $b ]
	then
		echo "B"
		b_count=$((b_count+1))
	elif [ $i -gt $c ]
	then
		echo "C"
		c_count=$((c_count+1))
	elif [ $i -gt $d ]
	then
		echo "D"
		d_count=$((d_count+1))
	elif [ $i -gt $e ]
	then
		echo "E"
		e_count=$((e_count+1))
	else
		echo "Fail"
		fail_count=$((fail_count+1))
	fi
done

draw_Hist() {
	
	#echo $1
	for i in `seq 1 $1`
	do
		printf "|";
		
	done
}


printf "\n----------------------------------------------"
printf "\nGrade A  : $a_count \t"
draw_Hist $a_count
printf "\nGrade B  : $b_count \t"
draw_Hist $b_count
printf "\nGrade C  : $c_count \t"
draw_Hist $c_count
printf "\nGrade D  : $d_count \t"
draw_Hist $d_count
printf "\nGrade E  : $e_count \t"
draw_Hist $e_count
printf "\nGrade F  : $fail_count \t"  
draw_Hist $fail_count
printf "\n----------------------------------------------\n"


