# Since the meta-intel-edison kernel recipe bypasses the YP kernel
# configuration, it's not possible to change the kernel config correctly.
# For now, s/r necessary kernel config lines in the defconfig provided by the
# meta-intel-edison layer

do_configure_append() {
  # Configurations required by snapd
  sed -i'' 's/.*CONFIG_SQUASHFS is not set.*/CONFIG_SQUASHFS=m\
CONFIG_SQUASHFS_XATTR=y\
CONFIG_SQUASHFS_ZLIB=y\
CONFIG_SQUASHFS_LZO=y\
CONFIG_SQUASHFS_XZ=y\
# CONFIG_SQUASHFS_4K_DEVBLK_SIZE is not set\
# CONFIG_SQUASHFS_EMBEDDED is not set\
CONFIG_SQUASHFS_FRAGMENT_CACHE_SIZE=3/' ${B}/.config
  sed -i'' 's/.*CONFIG_DEVPTS_MULTIPLE_INSTANCES is not set.*/CONFIG_DEVPTS_MULTIPLE_INSTANCES=y/' ${B}/.config
}
