#!/bin/bash
#function to find "a" to the power "b"
power()
{
num=$1
pow=$2
counter=1
result=1
if((pow==0)); then
result=1
fi
if ((num==0)); then
result=0
fi
if((num>=1&&pow>=1)); then
while((counter<=pow))
do
result=$((result*num))
counter=$((counter + 1))
done
fi
#Printing the result
echo "$1 to the power $2 is $result"
}

#main script
echo "SQUARE ROOT"
read -p "Enter number:" num
read -p "Enter power:" pow

#calling above function
power $num $pow
