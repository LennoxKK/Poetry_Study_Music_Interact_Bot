#!/bin/sh

#some background music
clear

w=${1,2,3}

function display_poem(){

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
                     
                    [ "${line:0:1}" == "#" ] && break
                    sleep 3
                     echo -e "\t\t \e[7m\e[33m$line \e[0m"
                    echo -e " \t\t ------------------------------------------------------  "
                 
               done < poemz.txt
                               
               echo -e "\n\n \t\t  \e[6m\e[36mENJOY! \e[0m"
               echo -e "\n\n \t\t \e[7m\e[34m[n - next, q  -  quit] : \e[0m"
               
                        
                 read a
                 
                 if [ $a == "n" ]
                 then
                      pkill play
                      bash poem.sh
                 else
                      pkill play
                      exit
                 fi
}

(play -q /home/lkk/Documents/App/Songs/rachel_platten_fight_song.mp3)&

echo -e "\n\n \t\t \e[7m\e[33m----------------  Poems WOOOOOOA!     ----------- \e[0m"
           
           
echo -e "\n\n\n \t\t\t\t \e[6m\e[36mNext poem? [Y/N]? \e[0m"
                
        
        
       
read  res

word="fightsong"
	       pass=true
       
               while read line;
               do  
                     if [ "$pass" == "true" ]
                     then
                             [ "${line:0:9}" != $word ] && continue
                             pass=false
                             continue
                     fi
                     
                    [ "${line:0:1}" == "#" ] && break
                    [ "${line:0:9}" != "    " ] && continue
                    sleep 1
                    echo $line
               done < lyrics.txt
if [ $res == "Y" ]
then
          
	(cat /home/lkk/Documents/App/poemz.txt | less | grep ~$~)     
	echo "-n"  "Which one? : "
	read p
	pkill play
	
	if [[ $p -gt 9 ]]
	then 
	       clear
	       display_poem ~$~poe$p $p
	else   
	        clear
	        display_poem ~$~poem$p $p
	fi
	
else
       pkill play
       exit
fi


