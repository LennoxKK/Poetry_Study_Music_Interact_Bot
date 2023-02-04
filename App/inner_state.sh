#!/bin/sh
clear
echo "

What is your name Mr/Madam?"
read name
echo "It's a nice name, Whoever gave you that thought well enough!

"
echo "I am Mr Moonlight, It's nice to meet you $name 

"
echo "Kindly, take sometime and search your heart

"
echo "What mood are in?  [ sad/happy ]"
read mood
if [ $mood == "sad" ]
then 
     echo "I am so sorry about that $name"
     echo "What stories are telling yourself right now?"
     echo "A sad story will always make you sad!"
     echo "Stay happy with excitement regardless of the situation"
else
      echo "That's great, happiness is the ultimate goal of our daily duties."
fi
     
 
