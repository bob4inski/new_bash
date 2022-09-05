echo "arguments are: $1 and $2"

read -p "need number  " number
re='^[0-9]+$'
if  ! [[ "$n1" =~ $re ]] ; 
then error=2
    echo "u should to try again"
else
case $number in
    0) echo "no students" ;;
    1) echo "1 student" ;;
    2) echo "2 students" ;;
    3) echo "3 students" ;;
    4) echo "4 students" ;;
    *) echo "a lot of students" ;;
    esac
fi
