#!/bin/bash
stable=https://raw.githubusercontent.com/topjohnwu/magisk-files/master/stable.json
stable_ver=$(curl -s $stable | sed -n 3p | cut -d ":" -f 2)
stable_link=$(curl -s $stable | sed -n 5p | sed 's/ //g' | cut -d : -f 2,3)
ver=${stable_ver:2:-2}
link=${stable_link:1:-2}

if [[ $1 == "OrangeFox" ]]; then
	l=recovery/FoxFiles
	f=Magisk.zip
elif [[ $1 == "SHRP" ]]; then
	l=shrp/extras
	f=c_magisk.zip
fi

echo "- Latest Magisk Stable release is $ver"
echo "- Link: $link"
sleep 1
echo "- Getting latest Magisk Stable ..."
cd vendor/$l
wget -O $f $link
echo "- Done!"
