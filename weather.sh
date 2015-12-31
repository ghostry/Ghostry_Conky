#!/bin/bash
#地区编码
code="CHXX0072";

cachefile=/tmp/weather.cache;
url="http://dy.ghostry.cn/Home/index/weather/string/1/area/$code";
date=$(export LANG=en_US;stat $cachefile |grep Modify|awk -F ':' '{print $2}'|awk '{printf("%s %s",$1,$2)}'|awk -F "." '{print $1}');
if [ ! $date ] ;then
        `wget -O- $url >$cachefile`
else
        time=$(date -d "$date" +%s);
        time=$[$time + 3600];
        if [ $time -lt $(date +%s) ] ;then
                `wget -O- $url >$cachefile`
        fi
fi
weather=$(cat /tmp/weather.cache);
if [ "$1" -eq "1" ] ;then
        echo $(echo $weather|awk '{print $1}');
else
        echo $(echo $weather|awk '{print $2}');
fi
