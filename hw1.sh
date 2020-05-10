#!/bin/bash
echo "Pleare enter your NAME SURNAME"
read -p "Name:" name
echo "Please enter youe age"
read -p "Age:" age
echo "Please identify your biological sex.(F for female/M for male)"
read -p "Gender:" gender
echo "THANK YOU"
echo -e "\n"
echo -e "Here is the list of risk countries\n 1.China\n 2.Iran\n 3.European countries\n 4.United Kingdom and Ireland"
echo "Did you recently visit one of these countries?(YES/NO)"
read -p "Answer:" answer1
if [ $answer1 = NO ] ; then
	risk1=0
else	risk1=1
fi

echo -e "\nHave you been near anyone that might come from one of the risky countries?(YES/NO)"
read -p "Answer:" answer2
if  [ $answer2 = NO ] ; then
	risk2=0
else	risk2=1
fi
echo -e "\nDo you have fever,sore thorat, or cough?(YES/NO)"
read -p "Answer:" answer3
if [ $answer3 = NO ] ; then
	risk3=0
else	risk3=1
fi

risk=$((risk1+risk2+risk3))
echo -e "\n"

if [ $gender = F ] ; then
	Gender=Female
else	Gender=Male
fi

if [ $risk -lt 2 ] ; then
	echo $name $age $Gender
	echo "Congratulation! You are free from Covid-19. STAY SFAE!!"
else	echo "WASH YOUR HANDS!! Please go to see a doctor right away. You are at risk of Covid-19."
fi
echo -e "\n"
exit 0

