#!/bin/bash

ln -fs /lib/systemd/system/rc-local.service /etc/systemd/system/rc-local.service

echo "" >> /etc/systemd/system/rc-local.service
echo "[Install]" >> /etc/systemd/system/rc-local.service
echo "WantedBy=multi-user.target" >> /etc/systemd/system/rc-local.service
echo "Alias=rc-local.service" >> /etc/systemd/system/rc-local.service

rm -rf /etc/rc.local; touch /etc/rc.local
chmod 755 /etc/rc.local

echo "#!/bin/bash" >> /etc/rc.local
echo "cd /home/ubuntu/xmr-stak-linux-2.7.1-cpu/" >> /etc/rc.local
echo $1 >> /etc/rc.local
