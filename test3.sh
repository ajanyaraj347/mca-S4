wordcount=0
count=0
chcount=0
numcount=0
alphacount=0
read file
while read c
do
	for i in $c
	do
	    wordcount=`expr $wordcount + 1`
	done 
done <$file
l=$(awk 'END{print NR}' $file)
re='^[0-9]+$'
for (( i=1; i<=l; i++))
do
        n=1
        line=`head -$i $file|tail -1`
        ch=`echo $line|cut -c $n`
        while [ "$ch" != "" ]
        do
                if [ "$ch" = " " ]
                then
                count=`expr $count + 1`
                else
                chcount=`expr $chcount + 1`
                if ! [[ $ch =~ $re ]] ; then
                alphacount=`expr $alphacount + 1`;
                else
                numcount=`expr $numcount + 1`;
                fi
                fi
                n=`expr $n + 1`
                ch=`echo $line|cut -c $n`

        done
done
l=$(grep -c '.' $file)
echo no. of Lines $l
echo no. of Space $count
echo no. of Words $wordcount
echo no. of Numbers $numcount
echo no. of Alphabets $alphacount
echo no. of Characters $chcount
