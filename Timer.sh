#! /usr/bin/bash

# Specify the directory of music file below V

dir="/home/rino/Music/Zen_Zen_Zense_Timer.oga"

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


function GetValues {

    echo "Enter Hours :"
    read hour

    echo "Enter Minutes :"
    read minute

    echo "Enter Seconds :"
    read second
}

function CountDown {

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

xdg-open $dir
}


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

function credit() {
   echo "made by :- Justin47"
}

var=1

while [ $var == 1 ]
do
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
