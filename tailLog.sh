deviceNo=$1
showLineNum=$2
if [ -z "$showLineNum" ]
then
	showLineNum=10
fi

if [ -z "$deviceNo" ]
then
	 echo "设备序列号：$deviceNo"
	 adb shell busybox tail -f -n $showLineNum /storage/emulated/0/miner/log/log.log
else
	 echo "设备序列号：$deviceNo"
	 adb -s $deviceNo shell busybox tail -f -n $showLineNum /storage/emulated/0/miner/log/log.log
fi
exit 0
