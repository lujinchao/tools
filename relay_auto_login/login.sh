#!/bin/sh
cd "`dirname $0`"
BASE_HOME=`pwd`

if [ $# -ne 3 ];then
    echo "请检查hosts文件，格式为host user password，如果使用门神登录，格式为host DoorGod spider/work/root"
    exit 1
fi

host=$1
user=$2
password=$3
relayHost="xxxxxx"
relayUser="xxxxxx"
mailPassword="xxxxxx"

./auto_login.exp $host $user $password $relayHost $relayUser $mailPassword
