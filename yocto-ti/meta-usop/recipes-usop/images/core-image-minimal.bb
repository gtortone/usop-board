DESCRIPTION = "A Linux image for uSOP board."
LICENSE = "MIT"
PR = "r1"

IMAGE_FEATURES += " ssh-server-dropbear"

IMAGE_LINGUAS = "en-us"
GLIBC_GENERATE_LOCALES = "en_US.UTF-8"

IMAGE_FSTYPES = "ext3 tar.gz cpio.gz cpio.gz.u-boot"

IMAGE_INSTALL = "\
    packagegroup-core-boot \
    kernel-modules \
    ssh-pregen-hostkeys \
    socat \
    ser2net \
    minicom \
    screen \
    libusb1 \
    libftdi \
    usbutils \
    mtd-utils \
    util-linux-mkfs \
    dosfstools \
    util-linux-sfdisk \
    e2fsprogs \
    e2fsprogs-resize2fs \
    netcat \
    rsync \
    parted \
    ntp \
    ${CORE_IMAGE_EXTRA_INSTALL} \
    "

inherit core-image
