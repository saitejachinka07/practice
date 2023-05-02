


input=$1

if [ -z "$input" ]
 then
echo Input is missing
exit
fi

 hello=$(curl -s https://github.com/raghudevopsb72/$input | grep "01-sample.sh" | xargs -n1 | grep title | awk -F = '{print $2}')

echo hello -$hello

if [ "$hello" == "01-sample.sh" ]
then
    echo "script is executed"
    else
    echo "need to improve my understanding"

    fi

