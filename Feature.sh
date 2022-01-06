 #/usr/bin/zsh

 hour=0
 minute=1
 second=3

#This is a developmental feature and will be integrated to the main timer
#Finally, the timer now shows count

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
