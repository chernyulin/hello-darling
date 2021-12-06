#!/bin/bash
#echo "Input process name first"
#read input1

PID=`ps -ef | grep "demo-0.0.1-SNAPSHOT.jar" | grep -v "cgroup" | grep -v "grep" | awk '{print $2}'`

if [ $? -eq 0 ]; then
    echo "process id:$PID"
else
    echo "process $input1 not exit"
    exit
fi


kill -9 ${PID}

if [ $? -eq 0 ];then
    echo "kill $input1 success"
else
    echo "kill $input1 fail"
fi

nohup java -jar ${workspace}/hello_darling_demo/build/libs/demo-0.0.1-SNAPSHOT.jar >/dev/null 2>&1 &
