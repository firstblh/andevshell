deviceNo=$1
if [ -z "$deviceNo" ]
then
	 echo "设备序列号：$deviceNo"
	 adb pull /storage/emulated/0/miner/log/log.log ~/Desktop/deviceLog/
else
	 echo "设备序列号：$deviceNo"
	 adb -s $deviceNo pull /storage/emulated/0/miner/log/log.log ~/Desktop/deviceLog/
fi
exit 0
