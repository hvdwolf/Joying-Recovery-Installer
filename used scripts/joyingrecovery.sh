#!/system/bin/sh

logFileName="/sdcard/JRI-$(date +'%Y%m%d').log"

echo "$(date +'%d-%b-%Y %H:%M:%S') : joyingrecovery.sh script; write the custom partition." >> "${logFileName}"

pimage=$(dd if=/sdcard/Download/joying_recovery_p10.img of=/dev/block/mmcblk0p10  2>&1)

echo "$(date +'%d-%b-%Y %H:%M:%S') : Output of the dd write process: $pimage" >> "${logFileName}"
# And echo the outputstring as a double logging option. This output will be captured by the apk.
echo "$pimage"


