# AnyKernel3 (kebab / OnePlus 8T, sm8250) - kernel-only flash
# Replaces only the kernel image; ramdisk, dtb and dtbo are kept from the
# existing boot image (this build changes no device tree).

properties() { '
kernel.string=sm8250 USB vbus-glitch debounce (CI build)
do.devicecheck=0
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=1
device.name1=kebab
device.name2=OnePlus8T
device.name3=KB2000
device.name4=KB2001
device.name5=KB2003
supported.versions=
supported.patchlevels=
'; } # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=1;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

. tools/ak3-core.sh;

split_boot;
flash_boot;
