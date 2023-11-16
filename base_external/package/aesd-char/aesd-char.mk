##############################################################
#
# AESD-CHAR-ASSIGNMENTS
#
###############################################################


AESD_CHAR_VERSION = c244e4bf833f976ae39d4a57e10f87df9cbe733d

AESD_CHAR_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-mti1313.git

AESD_CHAR_SITE_METHOD = git
AESD_CHAR_GIT_SUBMODULES = YES

# Adding aesd char device subdirectory.
AESD_CHAR_MODULE_SUBDIRS = aesd-char-driver/


# Adding all the dependencies(aesd char device).
define AESD_CHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin

endef

$(eval $(kernel-module))
$(eval $(generic-package))
