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
        start
        ;;

        2)
        credit
        ;;

        0)
        break
        ;;

        esac

done
