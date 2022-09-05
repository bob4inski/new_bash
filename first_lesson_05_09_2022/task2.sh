flag=t
while [[ "$flag" == "t" ]]
do 
    echo enter two numbers
    read n1 n2

    if [[ "$n1" -eq "0" ]] || [[ "$n2" -eq "0" ]]
    then flag=f
    echo "пиши нормально и думай"
    break
    fi


    re='^[0-9]+$'
    if ! [[ "$n1" =~ $re ]] ; 
    then flag=f
    echo "пиши нормально и думай"
    break
    fi

    if ! [[ "$n2" =~ $re ]] ; 
    then flag=f
    echo "пиши нормально и думай"
    break
    fi

    if [[ -n "$n1" ]] && [[ -n "$n2" ]] 
    then 
        remainder=1
        # Preserve numbers for future use
        t1=$n1
        t2=$n2
        if [ $n2 -eq 0 ]
        then
        echo "GCD of $n1 and $n2 = $n1"
        exit 0
        fi
        while [ $remainder -ne 0 ]
        do
        remainder=`expr $n1 % $n2`
        # or use
        #remainder=$((n1%n2))
        n1=$n2
        n2=$remainder
        done
        echo "GCD of $t1 , $t2 is $n1"

    else flag=f
    fi
done 
echo "bye"
