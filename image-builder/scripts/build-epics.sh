#!/bin/sh

# build EPICS base
cd /opt
wget https://epics.anl.gov/download/base/base-3.15.9.tar.gz
tar xzf base-3.15.9.tar.gz
rm base-3.15.9.tar.gz
mv base-3.15.9 epics
cd epics

make -j

# set temporary EPICS environment
export EPICS_BASE="/opt/epics"
export EPICS_HOST_ARCH=`${EPICS_BASE}/startup/EpicsHostArch`
export PATH="${PATH}:${EPICS_BASE}/bin/${EPICS_HOST_ARCH}"
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${EPICS_BASE}/lib/${EPICS_HOST_ARCH}"

# build autosave module
mkdir -p /opt/epics/support
cd /opt/epics/support
git clone https://github.com/epics-modules/autosave.git
cd autosave

cat > configure/RELEASE << EOF
EPICS_BASE=/opt/epics
EOF

make -j

cp lib/linux-arm/libautosave.* /opt/epics/lib/linux-arm




