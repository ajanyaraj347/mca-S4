
	
total=0
Total=0
mean=0
tot=()


while read p line;do
    for i in {3..9}
        do
          q=$(echo $line| cut -d' ' -f "$i")
          total=$((total + q))
        done
echo "$total for $p"
tot[$p]=$total
Total=$((Total + total))
total=0

if [[ $p -eq 28 ]]
then
mean=$((Total / $p))
fi

for i in 1..$p
do
 echo ${tot[$p]}
done

done <data.csv

echo "Full Total = $Total"
echo "Mean = $mean"
 
sd=()
for i in {1..28}
do
m1=$((tot[$i] - mean))
sd[$i]=$((m1 * m1))
echo ${sd["$i"]}
m1=0
done

sdtot=0
for i in {1..28}
do
sdtot=$((sdtot + sd["$i"]))
done

echo "Sum Of Sd=$sdtot"

var=0
var=$(($sdtot / 28))
echo "Variance = $var"
   
SD=$(bc <<< "scale=0; sqrt($var)")
echo "Standard Deviation =$SD"

A=$((mean + $((2 * SD))))
B=$((mean + SD))
C=$((mean + 0))
D=$((mean - SD))
E=$((mean - $((2 * SD))))

echo "$A $B $C $D $E "

a=0
b=0
c=0
d=0
e=0

for i in {1..28}
do
if [[ ${tot["$i"]} -ge $A ]]
then
echo "Grade A For $i Student"
a=$((a + 1))
elif [[ ${tot["$i"]} -ge $B ]]
then
echo "Grade B For $i Student"
b=$((b + 1))
elif [[ ${tot["$i"]} -ge $C ]]
then
c=$((c + 1))
echo "Grade C For $i Student"
elif [[ ${tot["$i"]} -ge $D ]]
then
d=$((d + 1))
echo "Grade D For $i Student"
elif [[ ${tot["$i"]} -ge $E ]]
then
e=$((e + 1))
echo "Grade E For $i Student"
else
o=$((o + 1))
fi
done

echo "Number of A Grade Students = $a"
echo "Number of B Grade Students = $b"
echo "Number of C Grade Students = $c"
echo "Number of D Grade Students = $d"
echo "Number of E Grade Students = $e"
echo "Number of failed Students = $o"

for((i=0; i<$a; i++));
do
 echo -n "*"
done

echo ""

for((i=0; i<$b; i++));
do
 echo -n "*"
done

echo ""

for((i=0; i<$c; i++));
do
 echo -n "*"
done

echo ""

for((i=0; i<$d; i++));
do
 echo -n "*"
done

echo ""

for((i=0; i<$e; i++));
do
 echo -n "*"
done

echo ""

for((i=0; i<$o; i++));
do
 echo -n "*"
done

echo ""

