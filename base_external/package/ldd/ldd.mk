LDD_VERSION = f570ecdda9ac1188870da6da052ab701d60831f4
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-mti1313.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_MODULE_SUBDIRS = misc-modules scull

$(eval $(kernel-module))

# Maybe not the smoothest way to enable loading of our modules
define LDD_INSTALL_TARGET_CMDS
	mkdir -p $(BR2_ROOTFS_OVERLAY)/bin
	$(INSTALL) -m 0755 $(LDD_SRCDIR)/scull/scull_load $(BR2_ROOTFS_OVERLAY)/bin/scull_load
	$(INSTALL) -m 0755 $(LDD_SRCDIR)/scull/scull_unload $(BR2_ROOTFS_OVERLAY)/bin/scull_unload

	$(INSTALL) -m 0755 $(LDD_SRCDIR)/misc-modules/module_load $(BR2_ROOTFS_OVERLAY)/bin/module_load
	$(INSTALL) -m 0755 $(LDD_SRCDIR)/misc-modules/module_unload $(BR2_ROOTFS_OVERLAY)/bin/module_unload
endef

$(eval $(generic-package))
