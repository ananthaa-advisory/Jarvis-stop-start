#!/bin/bash


export HUBOT_SLACK_TOKEN=asfadsf-asdfasdfsdfa-aeqewr
export HUBOT_LOG_LEVEL="info"
export https_proxy=https://proxy-asdfd.com:9090/
export HUBOT_AUTH_ADMIN="W523432423,werewr,werwe234"
export PORT=5000

PROGNAME=`basename $0`

print_usage()
{

	echo "Usage:$PROGNAME -r to start the bot, -s to stop the bot"

}

while:
do

	case "$1" in
	-r|-R) ./bin/hubot -a slack >> /var/log/hubot/hubot_jarvis.log 2>&1 echo $! > /var/run/hubot_jarvis.pid ;;
        -s|-S)  echo "Killing the bot process `cat /var/run/hubot_jarvis.pid`" ; kill -9 `cat /var/run/hubot_jarvis.pid` ;
	-*) print_usage ;;
	esac
	shift
done
