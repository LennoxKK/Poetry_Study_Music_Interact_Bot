#!/bin/sh

### mmm/dd/yyy   ###
clear

m=$(date +'%m')
d=$(date +'%d')
y=$(date +'%Y')
time=$(date +'%r')
month=`sed $m'q;d' months.txt`

#some background music


     function todo_list(){
	             word="$1"
	             
	             pass=true
	       song=`sed 1'q;d' song_links.txt`
	       eval $song
               while read line;
               do  
                     if [ "$pass" == "true" ]
                     then
                             [ "${line:0:6}" != $word ] && continue
                             pass=false
                             continue
                     fi
                    if [ "$line" == " " ]
                    then
                          continue
                    fi
                    [ "${line:0:1}" == "#" ] && break
                    sleep 3
                    echo $line
                 
               done < todo.txt
               echo "-n" "
               
                 [n - next, q  -  quit] :       "
                 read a
                 
                 if [ $a == "n" ]
                 then
                      pkill play
                      bash todo.sh
                 else
                      pkill play
                      exit
                 fi
	        }

(play -q /media/lennox/183E27B73E278D36/Users/USER/Music/Songs/System_music/Fight-Song-Rachel-Platten-Lyrics_e8qDOGLCSFo.mp3)&

echo " 
           ----------------  Daily Commitments WOOOOOOA!  -----------
           
           "
           
echo "-n" "                            Next commitment? [Y/N]       "
                
        
read res
if [ $res == "Y" ]
then
           clear
	echo "[             
	       
                           $month  $d     $y
               
                           $time
           
]  

 "      
	echo "-n"  "Date? : "
	read p
	pkill play
	
	if [[ $p -gt 9 ]]
	then 
	       clear
	       todo_list day$p $p
	else   
	        clear
	       todo_list day$p $p
	fi
else
       pkill play
       exit
fi
