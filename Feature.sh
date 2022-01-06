 #/usr/bin/zsh

 hour=0
 minute=1
 second=3


 while [[ $hour -ge 0 ]]
 do
    while [[ $minute -ge 0 ]]
    do
        while [[ $second -ge 0 ]]
            do
                echo "$hour h : $minute m : $second s"
                second=$(( $second-1 ))
                sleep 1s
            done
        minute=$(($minute-1))
        second=5
    done
    hour=$(( $hour-1 ))
    minute=5
done
