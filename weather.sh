#!/bin/bash
#地区编码
code="101180801";
#更新频率，单位：秒
interval=3600;

cachefile=/tmp/weather.cache;
url="http://dy.ghostry.cn/Home/index/weather/string/1/area/$code";
date=$(export LANG=en_US;stat $cachefile |grep Modify|awk -F ':' '{print $2}'|awk '{printf("%s %s",$1,$2)}'|awk -F "." '{print $1}');
if [ ! "$date" ] ;then
        `wget -O- $url >$cachefile`
else
        time=$(date -d "$date" +%s);
        time=$[$time + $interval];
        if [ $time -lt $(date +%s) ] ;then
                `wget -O- $url >$cachefile`
        fi
fi
weather=$(cat $cachefile);
if [ "$1" == "1" ] ;then
        echo $(echo $weather|awk '{print $1}');
else
        echo $(echo $weather|awk '{print $2}');
fi
