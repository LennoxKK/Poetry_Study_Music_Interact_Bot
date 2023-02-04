
  #!/bin/sh
  
#Global Variables

SLOW_BLINK = "\e[5m"
FAST_BLINK = "\e[6m"
BLACK = "\e[30m"
WHITE = "\e[37m"
CYAN = "\e[36m"
GREEN = "\033[0;32m"
BLUE = "\e[34m"
PURPLE = "\e[35m"
YELLOW = "\e[33m"
RED = "\e[32m"
END = "\e[m"




   music=`ls /run/media/lkk/DAA40F7BA40F5981/Users/lenno/Music/Larry_fleet`
  
  clear
         for var in $music
         do
                
                (play -q $var)&
                
         done
        echo -e "\n\n\n  
        \t -----------Jeremiah  1: 5-7 ------------
        
       \t\t Before I formed you in the womb I knew you, 
       \t\t Before you were born I set you apart; 
       \t\t I appointed you as a prophet to nations.
       \t\t 'Ah, Sovereign LORD,' 
       \t\t I don't know how to speak; I am only a child.'
       \t\t But the LORD said to me, 'Do not say, 
       \t\t 'I am only a child.'
       \t\t You must go to everyone I send you to and say whatever 
       \t\t I command you.
        " 

        echo -e "\t\t\t\t \e[5m\e[32mStudy\033[0m \t \e[36mFocus\e[0m \t \e[5m\e[34m Understand\e[0m \n\n\n\t\t\t\t \e[35mInternalize Don't Cram\033[0m \n\n\t\t\t\t \e[37mAll the best\e[0m
\n\t\t\t\t \e[6m\e[33mTake  5 minutes breaks \e[0m"
                    
                    
              
                    
         echo '-e' "\t\tYear 2\n\n\t\t\t1. ----> 2.1\n\t\t\t2. ----> 2.2\n\n\t\tYear 3\n\n\t\t\t3. ----> 3.1\n\t\t\t4. ----> 3.2 \n\n\t\tYear 4\n\n\t\t\t5. ----> 4.1\n\t\t\t6. ----> 4.2
               
               
                "
         
         
         echo '-e'  -n  "\n\t\tNumber of the folder you want to open :  "
         read folder_no
                    open=`sed $folder_no'q;d' desktop.txt`
	            eval $open
   
  
         echo '-e' -n "\n\n\n\t\t\tnext song?       [n]:  "
         read next
         
         music2=`ls /media/lennox/183E27B73E278D36/Users/USER/Music/Study_music/study_audio/study1.mp3`
         if [ $next == "n" ]
	 then  
	      pkill play
	      (play -q $music2)&
	      
	      
	 fi
	 
                    
                    
        echo "                             
        
        
        
        
        
                                    Do you want to quit?                     [q]"
	read a
	if [ $a == "q" ]
	then  
	      pkill play
	      clear
	      echo "    Bye !  
	      
	      
	      
	      "
	      
	fi
	      
	      
	      
	      exit
	fi
	   
