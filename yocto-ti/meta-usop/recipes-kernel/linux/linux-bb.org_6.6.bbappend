SRCREV = "525684d28fadc2bdae5424f28b219377bd5d4639"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://defconfig file://0001-add-SPIDEV0-SPIDEV1-UART1-UART4-ADC-to-am335x-bonebl.patch"

