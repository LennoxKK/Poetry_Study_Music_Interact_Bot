#!/bin/sh

clear
echo "


---------------  Equinox Solstice & Music  ---------------------


"
echo "[G - Gospel,C - Country ,M - Mood , B - Bango, 0 - Other]"

echo " 
  
"
echo "[ CG - Country Gospel, SM - Special Mood songs ]"

echo "-n" "
Which collection do you need? :    "
read resp
cd "/media/lennox/183E27B73E278D36/Users/USER/Music/Songs"
if [ $resp == "G" ]
then
        clear
       
	(play  Gospel/*.mp3)
	
	clear
	echo "Gospel _________________ Gospel"
        clear
        echo "Gospel _________________ Gospel"
        echo "Do you want to quit? [q]"
	read a
	if [ $a == "q" ]
	then  
	      pkill play
	      bash songs.sh   
	fi
fi
clear
if [ $resp == "C" ]
then
   
	(play  /home/lkk/Documents/App/Songs/Poem-songs/*.mp3)
	clear
	echo "Do you want to quit? [q]"
	read a
	if [ $a == "q" ]
	then  
	      pkill play
	      bash songs.sh
	fi
fi
clear
if [ $resp == "M" ]
then
	(play mood/*.mp3)
	echo "Do you want to quit? [q]"
	read a
	if [ $a == "q" ]
	then  
	      pkill play
	      bash songs.sh
	      
	fi
fi
clear
if [ $resp == "B" ]
then
	(play  BANGO/*.mp3)
	 echo "Do you want to quit? [q]"
	read a
	if [ $a == "q" ]
	then  
	      pkill play
	      bash songs.sh
	      
	fi
fi
clear
if [ $resp == "0" ]
then
         echo "Empty! "
         exit
	#(play -q Music/*.3gpp)&
	echo " Songs continue playing ------------------- Enjoy Listening                   "
	clear
	echo "Songs continue playing ------------------- Enjoy
	 Listening              "
	  echo "Do you want to quit? [q]"
	read a
	if [ $a == "q" ]
	then  
	      pkill play
	      bash songs.sh
	     
	fi
	#(play -q FM_Recording/*.mp3)&
	echo " Songs continue playing ------------------- Enjoy Listening              "
	clear
	echo "Do you want to quit? [q]"
	read a
	if [ $a == "q" ]
	then  
	      pkill play
	      bash songs.sh
	fi
fi
clear
if [ $resp == "CG" ]
then
         echo "Convert "
         folder=`ls /media/lennox/183E27B73E278D36/Users/USER/Videos/LYRICS_SONGS/GOSPEL/*.mp4`
         for var in $folder
         do
        	ffmpeg -i $var -vn -acodec libmp3lame -ac 2 -ab 160k -ar 48000 new1.mp3
        	play new1.mp3
        	 rm new1.mp3
         done
        echo "Do you want to quit? [q]"
	read a
	if [ $a == "q" ]
	then  
	      pkill play
	      bash songs.sh
	fi
fi


clear
if [ $resp == "SM" ]
then

         folder=`ls /home/lkk/Music/*.mp4`
         for var in $folder
         do
                ffmpeg -i $var -vn -acodec libmp3lame -ac 2 -ab 160k -ar 48000 new1.mp3
                play new1.mp3
                 rm new1.mp3
         done
        echo "Do you want to quit? [q]"
	read a
	if [ $a == "q" ]
	then  
	      pkill play
	      bash songs.sh
	fi
fi

