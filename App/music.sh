#!/bin/sh
clear
echo "    

"


### mmm/dd/yyy   ###

m=$(date +'%m')
d=$(date +'%d')
y=$(date +'%Y')
h=$( date +'%H')
time=$( date +'%r')
###month=`sed $m'q;d' months.txt`####

#if [ $h -gt 6 -a $h -le 12 ]
#then
#      pkill play
#      (play -q /media/lennox/183E27B73E278D36/Users/USER/Music/Songs/Recordings/morning.mp3)&
#elif [ $h -gt 12 -a $h -le 16 ]
#then
#      pkill play
#      (play -q /media/lennox/183E27B73E278D36/Users/USER/Music/Songs/Recordings/afternoon.mp3)&
#elif [ $h -gt 16 -a $h -le 20 ]
#then
#      pkill play
#      (play -q /media/lennox/183E27B73E278D36/Users/USER/Music/Songs/Recordings/evening.mp3)&
#else
#    (play -q /media/lennox/183E27B73E278D36/Users/USER/Music/Songs/Recordings/evening.mp3)&
#fi
#   

echo "    
                           " $m  $d     $y




### Time in 12 hr format ###

echo "                    
                           " $time
                           
                           echo "                   
                        
                           
                           "

(play -q /run/media/lkk/DAA40F7BA40F5981/Users/lenno/Music/Larry_fleet/larry_fleet_where_i_find_god_official_music_video_mp3_74249.mp3 repeat 30)&


echo "                            Joshua 1:8

       This book of the Law shall not depart out of your mouth,
       but you shall meditate on it day and night, that you may
       observe and do according to all that is written in it.
       For then you shall make your way prosperous, and then you
       shall deal wisely and have good success.

"


echo "             ------------- Welcome!   ----------------"
echo "-n" "      

       Hello, how are you? :      "
read responds
echo "
       I am $responds too."
echo "-n" " 
      
      Do you need studying music? [Y/N] :  "
read study

if [ $study == "Y" ]
then
      pkill play
      bash study_along.sh
else
     clear
     pkill play 
     echo "                            Joshua 1:8

       This book of the Law shall not depart out of your mouth,
       but you shall meditate on it day and night, that you may
       observe and do according to all that is written in it.
       For then you shall make your way prosperous, and then you
       shall deal wisely and have good success.

"
      echo "-n" " 
      
      Have a nice rest Sir.   
      
      Enjoy!
      
      
      
      
      
      
      "
fi

(play -q /home/lkk/Documents/App/Songs/jireh_elevation_worship_maverick.mp3)&
word="jireh"
pass=true
 while read line;
               do  
                     if [ "$pass" == "true" ]
                     then
                             [ "${line:0:6}" != $word ] && continue
                             pass=false
                             continue
                     fi
                   
                    [ "${line:0:6}" == "      " ] && continue
                    [ "${line:0:1}" == "#" ] && break
                    sleep 3
                    echo "          "$line
                   
               done < lyrics.txt



echo "   [ 
             dc - Daily Commitments,
              t -  trim,
              r - record,
              c -  combine,
              p - just play,
              ps - poems, 
              f -  favorite, 
              d - daily devotion
              H - Healthy inner-state
]"

echo "-n"  " What next Sir/Madam?: 
  "
read a
echo "  









"

if [ $a == "H" ]
then
      pkill play
      bash inner_state.sh
fi

if [ $a == "f" ]
then
      pkill play
      bash songs.sh
fi
if [ $a == "d" ]
then  
      pkill play
      bash verse.sh
fi
if [ $a == "dc" ]
then  
      pkill play
      bash todo.sh
fi
if [ $a == "t" ]
then  
        pkill play
	clear
	echo "Enter the folder you want to trim from"
	read foldert
	clear
	echo "Enter the mp3 file to trim?"
	read oldfile
	clear
	echo "The name of the new trimmed file? [e.g new_file.mp3]"
	read newfile
	clear
	echo -n "Where should the trimming start? -:    "
	read start
	if [[ !$start =~ ^[0-9]+$ ]]; then
		echo "Try an integer!"
		exit
	fi
	(( start = start + 1))
	echo -n  "Duration from the start? -:       "
	read duration
	clear
	if [[ !$duration =~ ^[0-9]+$ ]]; then
                echo "Try an integer!"
                exit
        fi
        (( duration = duration + 1))
        cd $foldert
	sox $oldfile $newfile trim $start $duration
	(play -q  $newfile)&
	echo "Was it great?"
	read res
	echo "Welcome for more?"
	cd ..

fi

if [ $a == "ps" ]
then 
        pkill play
	bash poem.sh
fi

clear

if [ $a == "p" ]
then
        pkill play
	#The format      -----(play -q file.mp3 )& 
	#is used to play music in the background
        sox Music/Lay_me_down_chris_tomlin.mp3 lay.mp3 trim 0 30
	touch f.sh
      echo  "#!/bin/sh">>f.sh
      echo "(play -q lay.mp3)&" >>f.sh
      echo "exit" >.f.sh
     bash f.sh
     clear
     echo "From which folder do you want your next song to come from?"
     read folder
     echo "Do you want to play all songs from $folder? [Y/N]"
     read answer
     if [ $answer == "Y" ]
     then
	     rm f.sh
	     cd $folder
	     sleep 15
	     ( play -q *.mp3)&
     else
        	cd $folder
		echo "[ song_name.mp3 or Choose_from_list ]"
        	read song
		if [ $song == "choose" ]
		then
			echo "Choose from the playlist"
         		ls -AL | tr -s ' ' | cut -f9- -d' '
			echo "Enter the song"
			read song
	 
		fi
      		sleep 5 play $song
        	echo "Bye-Bye"
      fi
      cd ..
fi

echo "-n" " 
                
                [Quit - q] [ Back - b ] 
                
                
                "
                
read a
if [ $a == "q" ]; then
   pkill play
   exit
else
     bash music.sh
     
fi
echo "  

                                   Bye
                                   
                                   
                                   
                                   
                                   
                                     "

