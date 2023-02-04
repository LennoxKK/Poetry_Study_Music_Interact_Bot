#!/bin/sh

#some background music
clear

     function display_verse(){
	             word="$1"
	             
	             pass=true
	       song=`sed $2'q;d' poem-songs.txt`
	       eval $song
               while read line;
               do  
                     if [ "$pass" == "true" ]
                     then
                             [ "${line:0:9}" != $word ] && continue
                             pass=false
                             continue
                     fi
                    if [ "$line" == " " ]
                    then
                          continue
                    fi
                    [ "${line:0:1}" == "#" ] && break
                    sleep 3
                        echo -e "\t\t \e[7m\e[33m$line \e[0m"
                    echo -e " \t\t ----------------------------------------------------------"
                 
                 
               done < daily_verses.txt
                                   
               echo -e "\n\n \t\t  \e[6m\e[36mENJOY! \e[0m"
               echo -e "\n\n \t\t \e[7m\e[34m[n - next, q  -  quit] : \e[0m"
                     
                 read a
                 
                 if [ $a == "n" ]
                 then
                      pkill play
                      bash verse.sh
                 else
                      pkill play
                      exit
                 fi
	        }

(play -q /home/lkk/Music/larry_fleet_where_i_find_god_official_music_video_mp3_74249.mp3)&

echo -e "\n\n \t\t \e[7m\e[33m----------------  Daily Devotion WOOOOOOA!     ----------- \e[0m"
           
           
echo -e "\n\n\n \t\t\t\t \e[6m\e[36mNext Devotion? [Y/N]? \e[0m"      
        
read res
if [ $res == "Y" ]
then
           clear
	(cat /home/lkk/Documents/App/daily_verses.txt | less | grep ~$~)
     
	echo "-n"  "Which one? : "
	read p
	pkill play
	
	if [[ $p -gt 9 ]]
	then 
	       clear
	       display_verse ~$~vers$p $p
	else   
	        clear
	       display_verse ~$~verse$p $p
	fi
else
       pkill play
       exit
fi


