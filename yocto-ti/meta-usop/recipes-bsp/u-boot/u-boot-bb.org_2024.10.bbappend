SRCREV = "bf0e9d0b7274d2b561bd24c858affec2038250f9"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://devtool-fragment.cfg file://default-uEnv.txt"

do_configure:append() {
    cp ${WORKDIR}/default-uEnv.txt ${S}
}
