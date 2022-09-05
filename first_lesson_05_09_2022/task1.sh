#!/bin/bash
name=1
age=1
while [[ "$name" != '0' ]] && [[ -n "$name" ]] && [[ "$age" != '0' ]] && [[ "$age" != '' ]] 
do 
    read -p "write uor name: " name
    if [[ "$name" == '0' ]] || [[ "$name" == "" ]] 
    then echo "bye"
    break
    fi
    read -p  "write uor age: " age

    if [[ "$age" == '' ]] || [[ "$age" -eq '0' ]]
    then echo "bye"
    break
    fi
    if [ "$age" -le 16 ];
        then group="childe"
    fi

    if [ "$age" -gt 17 ] && [ "$age" -le 25 ];
        then group="youth"
    fi

    if [ "$age" -gt 25 ];
        then group="adult"   
    fi 
    echo "hello $name, your group is: $group"

done





