#!/bin/bash
# run this with root!!
# if this doesnt work, check if the bus path is correct with:
# lsusb -t (search for cdc)

#modem-cmd /dev/ttyACM0 AT+CFUN=16 &
#sleep 1
#killall modem-cmd

#echo '2-2' |tee /sys/bus/usb/drivers/usb/unbind
#sleep 1
#echo '2-2' |tee /sys/bus/usb/drivers/usb/bind
echo Waiting...
sleep 10
echo Disabling modem...
nmcli radio wwan off
sleep 5
echo Enabling modem...
nmcli radio wwan on
sleep 15
echo Disabling modem...
nmcli radio wwan off
sleep 3
echo Enabling modem...
nmcli radio wwan on
sleep 12
echo Connecting modem...
nmcli c up "HoT"
