
##############################################################
#
# AESD_PROJECT
#
##############################################################

#TODO: Fill up the contents below in order to reference your aesd project git contents
AESD_PROJECT_VERSION = 235d36d7614aa28f18060360f8c81c72302f6b22
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_PROJECT_SITE = git@github.com:SrirajVemparala/AESD_application_code.git
AESD_PROJECT_SITE_METHOD = git
AESD_PROJECT_GIT_SUBMODULES = YES

define AESD_PROJECT_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/socket all
endef

define AESD_PROJECT_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/MLX_code/* $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/socket/* $(TARGET_DIR)/usr/bin
	#$(INSTALL) -m 0755 $(@D)/aesd-lcd/server-start-stop.sh $(TARGET_DIR)/etc/init.d/S99aesdserver
endef

$(eval $(generic-package))
