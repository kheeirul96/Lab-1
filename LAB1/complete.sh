#!/bin/bash
# Bash Menu Script Example
echo "--------------------------------"
echo "Lab01: SHELL PROGRAMMING"
echo "--------------------------------"
PS3='Please enter your choice: '
options=("BMI Calculator" "Calculator" "Pattern Maker" "Swap" "Prime Number" "Power Square" "About" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "BMI Calculator")
            clear
            echo "--------------------------------"
            echo "-------BMI Calculator-----------"
            echo "--------------------------------"
            echo "Please enter your weight in KG: "
            read weight
            echo "Please enter your your height in M (eg: 1.96): "
            read height
            clear

            BMI=$(bc <<< "scale=2; ($weight) / ($height*$height)")
            echo "--------------------------------"
            echo "RESULT"
            echo "--------------------------------"
            echo "WEIGHT:$weight"
            echo "HEIGHT:$height"
            echo "BMI:$BMI"



            echo "Your Body Mass Index (BMI) is $BMI"
            if [ "$(echo " 18.5 > $BMI " | bc -l )" == 1 ]; then
                echo "Here is a sandwich; please eat."
            elif [ "$(echo " 24.5 > $BMI " | bc -l )" == 1 ]; then
                echo "You're in normal weight range."
            elif [ "$(echo " 29.5 > $BMI " | bc -l )" == 1 ]; then
                echo "You could stand to lose a few."
            else
                echo "There is more of you to love."
            fi
            echo "--------------------------------"
            echo ""
            echo "--------------------------------"
            echo "--------------MENU--------------"
            echo "--------------------------------"
            echo "1. BMI Calculator"
            echo "2. Calculator"
            echo "3. Pattern Maker"
            echo "4. Swap"
            echo "5. Prime Number"
            echo "6. Power Square"
            echo "7. ABOUT"
            echo ""
            echo "8.Get me outta here !!"
            echo "--------------------------------"
            echo "--------------------------------"
            ;;
        "Calculator")
            clear
            echo "--------------------------------"
            echo "-----------CALCULATOR-----------"
            echo "--------------------------------"
            # Take user Input
            echo "Enter Two numbers : "
            echo "Number i: "
            read a
            echo "Number ii: "
            read b

            # Input type of operation
            echo "Enter Choice :"
            echo "1. Addition"
            echo "2. Subtraction"
            echo "3. Multiplication"
            echo "4. Division"
            read ch
            

            # Switch Case to perform
            # calulator operations
            case $ch in
              1)res=`echo $a + $b | bc`
              ;;
              2)res=`echo $a - $b | bc`
              ;;
              3)res=`echo $a \* $b | bc`
              ;;
              4)res=`echo "scale=2; $a / $b" | bc`
              ;;
            esac
    
            echo "--------------------------------"
            echo "RESULT"
            echo "--------------------------------"
            echo "Number i = [$a]Number ii = [$b]"
            echo "Result : $res"
            echo "--------------------------------"
            echo ""
            echo "--------------------------------"
            echo ""
            echo "--------------------------------"
            echo "--------------MENU--------------"
            echo "--------------------------------"
            echo "1. BMI Calculator"
            echo "2. Calculator"
            echo "3. Pattern Maker"
            echo "4. Swap"
            echo "5. Prime Number"
            echo "6. Power Square"
            echo "7. ABOUT"
            echo ""
            echo "8.Get me outta here !!"
            echo "--------------------------------"
            echo "--------------------------------"
            ;;
        "Pattern Maker")
            clear
            echo "--------------------------------"
            echo "--------PATTERN MAKER-----------"
            echo "--------------------------------"

            MAX_NO=0

            echo -n "Enter Number between (5 to 9) : "
            read MAX_NO

            if ! [ $MAX_NO -ge 5 -a $MAX_NO -le 9 ] ; then
               echo "WTF... I ask to enter number between 5 and 9, Try Again"
               exit 1
            fi

            clear

            for (( i=1; i<=MAX_NO; i++ ))
            do
                for (( s=MAX_NO; s>=i; s-- ))
                do
                   echo -n " "
                done
                for (( j=1; j<=i;  j++ ))
                do
                 echo -n " ." 
                done
                echo ""
            done
            ###### Second stage ######################
            for (( i=MAX_NO; i>=1; i-- ))
            do
                for (( s=i; s<=MAX_NO; s++ ))
                do
                   echo  -n " "
                done
                for (( j=1; j<=i;  j++ ))
                do
                 echo  -n " ."
                done
                echo ""
            done

            echo "--------------------------------"
            echo ""
            echo "--------------------------------"
            echo "--------------MENU--------------"
            echo "--------------------------------"
            echo "1. BMI Calculator"
            echo "2. Calculator"
            echo "3. Pattern Maker"
            echo "4. Swap"
            echo "5. Prime Number"
            echo "6. Power Square"
            echo "7. ABOUT"
            echo ""
            echo "8.Get me outta here !!"
            echo "--------------------------------"
            echo "--------------------------------"
            ;;
        "Swap")
            clear
            echo "--------------------------------"
            echo "-------------SWAP---------------"
            echo "--------------------------------"

           echo "Enter value for x : "
read x
echo "Enter value for y : "
read y
echo "Before swap, x = $x and y = $y"
z=$x
x=$y
y=$z
echo "After swap, x = $x and y = $y"

            echo "--------------------------------"
            echo ""
            echo "--------------------------------"
            echo "--------------MENU--------------"
            echo "--------------------------------"
            echo "1. BMI Calculator"
            echo "2. Calculator"
            echo "3. Pattern Maker"
            echo "4. Swap"
            echo "5. Prime Number"
            echo "6. Power Square"
            echo "7. ABOUT"
            echo ""
            echo "8.Get me outta here !!"
            echo "--------------------------------"
            echo "--------------------------------"
            ;;
        "Prime Number")
            clear
            echo "--------------------------------"
            echo "---------PRIME NUMBER-----------"
            echo "--------------------------------"

            echo -n "Enter a number: "
read num
i=2

while [ $i -lt $num ]
do
  if [ $(($num % $i)) -eq 0 ]
  then
      echo "$num is not a prime number"
      echo "Since it is divisible by $i"
      exit
  fi
  i=`expr $i + 1`
done

echo "$num is a prime number "

            echo "--------------------------------"
            echo ""
            echo "--------------------------------"
            echo "--------------MENU--------------"
            echo "--------------------------------"
            echo "1. BMI Calculator"
            echo "2. Calculator"
            echo "3. Pattern Maker"
            echo "4. Swap"
            echo "5. Prime Number"
            echo "6. Power Square"
            echo "7. ABOUT"
            echo ""
            echo "8.Get me outta here !!"
            echo "--------------------------------"
            echo "--------------------------------"
            ;;
        "Power Square")
            clear
            echo "--------------------------------"
            echo "---------POWER SQUARE-----------"
            echo "--------------------------------"

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

            echo "--------------------------------"
            echo ""
            echo "--------------------------------"
            echo "--------------MENU--------------"
            echo "--------------------------------"
            echo "1. BMI Calculator"
            echo "2. Calculator"
            echo "3. Pattern Maker"
            echo "4. Swap"
            echo "5. Prime Number"
            echo "6. Power"
            echo "7. ABOUT"
            echo ""
            echo "8.Get me outta here !!"
            echo "--------------------------------"
            echo "--------------------------------"
            ;;
        "About")
            clear
            echo "--------------------------------"
            echo "----------GROUP MEMBERS---------"
            echo "-----------INFORMATION----------"
            echo "--------------------------------"
            echo "1. []"
            echo "2. []"
            echo "3. []"
            echo "4. []"
            echo "5. []"
            echo ""
            echo "--------------------------------"
            echo ""
            echo "--------------------------------"
            echo "--------------MENU--------------"
            echo "--------------------------------"
            echo "1. BMI Calculator"
            echo "2. Calculator"
            echo "3. Pattern Maker"
            echo "4. Program 4"
            echo "5. Program 5"
            echo "6. Program 6"
            echo "7. ABOUT"
            echo ""
            echo "8.Get me outta here !!"
            echo "--------------------------------"
            echo "--------------------------------"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
