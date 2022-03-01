#!/bin/sh

#  LockScreenHiddenButton.sh
#  
#
#  Created by aJBboCydia
#  



echo "[*] path :"
pwd
sshpass -p "alpine" ssh root@192.168.1.208 rm -rf /var/mobile/theosTweaks/*.deb
rm -rf packages .theos
make package
sshpass -p "alpine" scp -r packages/*.deb root@192.168.1.208:/var/mobile/theosTweaks
sshpass -p "alpine" ssh root@192.168.1.208 dpkg -i /var/mobile/theosTweaks/*.deb
sshpass -p "alpine" ssh root@192.168.1.208 killall backboardd






