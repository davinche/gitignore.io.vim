#!/bin/bash

api="https://www.gitignore.io/api"
listargs=''

while getopts ":t:" o; do
    case "$o" in
        t)
            if [ -z "$listargs" ]; then
               listargs="$OPTARG"
            else
                listargs+=",$OPTARG"
            fi
            ;;
    esac
done
apiurl="$api/$listargs"
filecontent=$(curl -s ${apiurl})
echo "$filecontent"
