#! /usr/bin/bash

# Specify the directory of music file below V

file="/alarm/alarm.mp3"

current=$( pwd )
dir="$current$file"

function menu()
{
echo "
        **********************************************
                     Welcome to Timer
        **********************************************
        Please choose an option:

        1. Start timer
        2. credits
        0. Exit

               --------###############---------         "
}


#Gets the value for timer
function GetValues() {

    echo "Enter Hours :"
    read hour

    echo "Enter Minutes :"
    read minute

    echo "Enter Seconds :"
    read second
}

#Main function of Timer.sh, gets input from GetValues
function CountDown() {

     while [[ $hour -ge 0 ]]
    do
        while [[ $minute -ge 0 ]]
        do

            while [[ $second -ge 0 ]]
            do

                clear
                echo " $hour h : $minute m : $second s"
                second=$(( $second-1 ))
                sleep 1s

            done

        minute=$(($minute-1))
        second=60

    done

    hour=$(( $hour-1 ))
    minute=60

done
vlc "$dir"
}

#previously used function, now it got replaced by  CountDown
function start()
{
   echo " Enter Time in the following format

                 integer_time-character
                        example: 4m
                                 1m 24s

          Time characters:
          s -second
          m -Minute
          h -hour "
   read time
   sleep $time ; vlc $dir
}


#Created this one Just for fun :P
function credit() {
   echo "made by :- JustinFrost47
            "
   echo "   Song:At Night
         Author: Spiring
         Email:spiringofficial@gmail.com"
   sleep 3s
}

#Switch statement enclosed in while loop for looping in menu
var=1

while [ $var == 1 ]
do
    clear
    menu

    read choice

    case $choice in

        1)
        GetValues
        CountDown
        ;;

        2)
        credit
        ;;

        0)
        break
        ;;

        esac

done
