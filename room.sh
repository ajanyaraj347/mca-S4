
n=40
declare -A s1
s1=()

while IFS="," read -r  roll_no1 name1
do
for i in "${roll_no1[@]}"; 
do
 echo "$i";
 done

done < s1.csv


printf "\n---------------------------------------------------------------------------\n"

declare -A s3
s3=()

while IFS="," read -r  roll_no2 name2
do
for i in "${roll_no2[@]}"; 
do
 echo "$i";
 done

done < s3.csv

printf "\n---------------------------------------------------------------------------\n"

declare -A s5
s5=()

while IFS="," read -r  roll_no3 name3
do
for i in "${roll_no3[@]}"; 
do
 echo "$i";
 done

done < s5.csv

printf "\n---------------------------------------------------------------------------\n"

while IFS="," read -r  roll_no1 name1
do
for i in "${roll_no1[@]}"; 
do

   out=$(( $i % 2 ))
   if [ $out -eq 0 ] 
then
      echo “$i is even number” 
   else
      echo “$i is ODD number”
   fi
   i=$(( $i + 1 ))

   done
done < s1.csv


printf "\n---------------------------------------------------------------------------\n"

while IFS="," read -r  roll_no2 name2
do
for i in "${roll_no2[@]}"; 
do

   out=$(( $i % 2 ))
   if [ $out -eq 0 ] 
then
      #${room1[@]==$i}
      echo “$i is even number” 
   else
      echo “$i is ODD number”
   fi
   i=$(( $i + 1 ))

   done
done < s3.csv


printf "\n---------------------------------------------------------------------------\n"

while IFS="," read -r  roll_no3 name3
do
for i in "${roll_no3[@]}"; 
do

   out=$(( $i % 2 ))
   if [ $out -eq 0 ] 
then
      echo “$i is even number” 
   else
      echo “$i is ODD number”
   fi
   i=$(( $i + 1 ))

   done
done < s5.csv



n=40
declare -A room1

room1=()
for i in 


    
declare -A room2

room2=()


declare -A room3

room3=()


declare -A room4

room4=()


declare -A room5

room5=()


declare -A room6

room6=()



