make ARCH=arm htcleo_defconfig
make ARCH=arm CROSS_COMPILE=/root/CodeSourcery/Sourcery_G++_Lite_OLDTOOLCHAIN/bin/arm-none-linux-gnueabi- zImage -j6 CONFIG_DEBUG_SECTION_MISMATCH=y
make ARCH=arm CROSS_COMPILE=/root/CodeSourcery/Sourcery_G++_Lite_OLDTOOLCHAIN/bin/arm-none-linux-gnueabi- modules -j6

tar cvzf ../"ACAOmegaCM35UnifiedKernel`date +"%m%d%y%H%M"`".tar.gz ../compiled/
mv ../ACAOmegaCM35Unified* ../ACAKernels
