
##############################################################
#
# AESD Char Driver - Assignment 8
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_CHAR_DRIVER_VERSION = 91a5ca1c6a93a51d134c8392a6de10bfebd0b4ec
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_CHAR_DRIVER_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-Ackleberry.git
AESD_CHAR_DRIVER_SITE_METHOD = git
AESD_CHAR_DRIVER_SUBMODULES = YES
AESD_CHAR_DRIVER_MODULE_SUBDIRS = aesd-char-driver
AESD_CHAR_DRIVER_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)

define AESD_CHAR_DRIVER_INSTALL_TARGET_CMDS
    $(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8-buildroot/* $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment5-buildroot/long_string.txt $(TARGET_DIR)/root
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/medium_long.txt $(TARGET_DIR)/root
endef

$(eval $(kernel-module))
$(eval $(generic-package))
