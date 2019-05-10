wget https://github.com/Simo190/Zsub1X_Update_V1.3.4/releases/download/V1.4/zSub1x_1.4.0_Linux_daemon.zip
unzip zSub1x_1.4.0_Linux_daemon.zip
chmod +x zsub1x-cli
chmod +x zsub1xd
zsub1x-cli stop
sleep 30
killall -15 zsub1xd
rm /usr/local/bin/zsub1x-cli
rm /usr/local/bin/zsub1xd
mv zsub1x-cli /usr/local/bin/
mv zsub1xd /usr/local/bin/
zsub1xd -daemon -reindex
rm zSub1x_1.4.0_Linux_daemon.zip
sleep 20
watch zsub1x-cli getblockcount
