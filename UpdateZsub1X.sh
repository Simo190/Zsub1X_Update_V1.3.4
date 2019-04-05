wget https://github.com/SuB1X-Coin/zSub1x/releases/download/v1.3.4/zsub1x-1.3.4-x86_64-linux.tar.gz
tar xvzf zsub1x-1.3.4-x86_64-linux.tar.gz
chmod +x zsub1x-cli
chmod +x zsub1xd
zsub1x-cli stop
sleep 30
killall -15 zsub1xd
rm /usr/local/bin/zsub1x-cli
rm /usr/local/bin/zsub1d
mv zsub1x-cli /usr/local/bin/
mv zsub1xd /usr/local/bin/
zsub1xd -daemon
rm zsub1x-1.3.4-x86_64-linux.tar.gz
rm zsub1x-qt
sleep 20
watch zsub1x-cli mnsync status
