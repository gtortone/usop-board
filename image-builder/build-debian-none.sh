#!/bin/bash

YOCTO_PROJECT_BASE=/home/tortone/devel/Belle2/git/usop-board/yocto-ti/build/deploy-ti/images/usop

echo "copy Linux kernel modules from Yocto image directory..."
mkdir -p overlays/boot
cp $YOCTO_PROJECT_BASE/modules-usop.tgz overlays/boot

echo "copy U-Boot, zImage, device tree..."
cp $YOCTO_PROJECT_BASE/MLO overlays/boot
cp $YOCTO_PROJECT_BASE/u-boot-spl.bin overlays/boot
cp $YOCTO_PROJECT_BASE/u-boot.img overlays/boot
cp $YOCTO_PROJECT_BASE/zImage overlays/boot
cp $YOCTO_PROJECT_BASE/am335x-boneblack.dtb overlays/boot

echo "start Linux image build..."
sudo debos -t image:images/usop-debian12-none.img --cpus=8 --disable-fakemachine recipes/debimage-usop.yaml

sudo losetup -D

