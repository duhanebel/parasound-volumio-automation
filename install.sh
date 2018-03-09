#!/bin/bash
set -xe
echo "*** Creating run directory (requires sudo password)"
sudo mkdir -p /var/run/parasound
sudo chown volumio.volumio /var/run/parasound

echo "*** Installing the scripts"
cp parasound_start.sh /data/plugins/music_service/volspotconnect2/
cp parasound_stop.sh /data/plugins/music_service/volspotconnect2/
cp onstop1.sh /data/plugins/music_service/volspotconnect2/
rm /data/plugins/music_service/volspotconnect2/onstart1.sh
cp onstart1.sh /data/plugins/music_service/volspotconnect2/

echo "*** Patching the plugin"
sed -i '${s#$# --onstop ./onstop1.sh#}' /data/plugins/music_service/volspotconnect2/volspotconnect2.tmpl

echo "DONE"
