 #/usr/bin/bash

 hour=1
 minute=2
 second=3

 while [[ $hour>0 ]]
 do
    echo "$hour"

    while [[ $minute>0 ]]
    do
        echo "$minute"

        while [[ $second>0 ]]
            do
                echo "$hour : $minute : $second"
                second=$(( $second-1 ))
                sleep 1s

            done
        minute=$(($minute-1))
        second=60
    done
done
