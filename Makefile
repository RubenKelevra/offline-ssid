include $(TOPDIR)/rules.mk

PKG_NAME:=gluon-offline-ssid
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(GLUONDIR)/include/package.mk

define Package/gluon-offline-ssid
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=Offline SSID
  DEPENDS:=+gluon-core +kmod-batman-adv +batctl
endef

define Package/gluon-offline-ssid/description
	Gluon community wifi mesh firmware framework: offline ssid
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/gluon-authorized-keys/install
	$(CP) ./files/* $(1)/
endef

define Package/gluon-offline-ssid/postinst
#!/bin/sh

endef

$(eval $(call BuildPackage,gluon-offline-ssid))
