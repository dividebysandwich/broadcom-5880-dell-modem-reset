# broadcom-5880-dell-modem-reset
Linux scripts to fix the WWAN card not working after resume in Dell 7212 and other notebooks using the Broadcom 5880 WWAN card

Under Linux, the Broadcom 5880 WWAN card does not work after resuming from standby mode. After considerable research I have found a sequence of events that reliably restores functionality for me. I make no guarantees that this will work for your device, this script is supplied in the hope that it might.

Copy modemreset.sh into /usr/sbin/ and the .service file into /etc/systemd/system/, then enable the service with ```systemctl enable modemreset```.

I have left some commented lines in the script that were recommended in various online posts, however this has not worked reliably for me. Disabling and enabling WWAN twice was absolutely required for this to work, at least for me. Feel free to experiment. 
Note that in the last line of the script I am connecting to my wireless provider, adjust this as needed, or remove if you plan to use some other method to connect.
