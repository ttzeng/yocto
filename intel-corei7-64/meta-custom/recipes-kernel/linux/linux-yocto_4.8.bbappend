FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

# Enable RTL8192 USB WLAN
# Patch: http://lkml.iu.edu/hypermail/linux/kernel/1701.1/00228.html
SRC_URI += "file://rtl8192.cfg \
            file://0001-Fix-missing-entry-in-USB-drivers-private-data.patch \
           "

# Enable RT73 USB WLAN
SRC_URI += "file://rt73.cfg"
