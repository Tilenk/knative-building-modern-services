#/bin/bash

echo "Request statistics"

for i in {1..100}
    do echo $(curl -s "$1") &
done | sort | uniq -c | sort -nr | awk -v num="100" '{percent=100*$1/num; printf percent}{printf "%%: "}{for(i=2;i<=NF;++i)printf $i" "}{print ""}'