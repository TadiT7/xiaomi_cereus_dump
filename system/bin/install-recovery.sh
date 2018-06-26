#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:67108864:3c7566eac502eda545813a43415bb22f5d38321c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:67108864:f38d1256137999f7c28ba6e68dee9f2dc8cb31f3 EMMC:/dev/block/platform/bootdevice/by-name/recovery 3c7566eac502eda545813a43415bb22f5d38321c 67108864 f38d1256137999f7c28ba6e68dee9f2dc8cb31f3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
