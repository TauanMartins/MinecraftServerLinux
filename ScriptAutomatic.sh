if [ $(ps -aux | grep java -c) -eq 1 ];
then 
	echo "Checou e RODOU na data: " $(date) >> /home/ubuntu/LogMinecraft
	nohup /home/ubuntu/McServerV1.10/start.sh &
else
	echo "Checou e nao rodou na data: " $(date) >> /home/ubuntu/LogMinecraft
fi
