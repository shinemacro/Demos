# ! /bin/sh

SERVICE_PATH="/data/www/ec"

SERVICE_NAME="go-mysql-sync"

START_CMD="./$SERVICE_NAME -config=river.toml"

LOG_FILE="restart.log"


cd $SERVICE_PATH

pwd

while true 

do

    procnum=`ps -ef|grep $SERVICE_NAME|grep -v grep|wc -l`

    if [ $procnum -eq 0 ]

    then

        echo "start service...................."

        echo `date +%Y-%m-%d` `date +%H:%M:%S`  $SERVICE_NAME >>$LOG_FILE

        ${START_CMD}

    fi

    sleep 1 //每秒检查一轮

done
