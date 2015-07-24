include $(TOPDIR)/rules.mk

PKG_NAME:=gluon-offline-ssid
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(GLUONDIR)/include/package.mk

define Package/gluon-offline-ssid
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=Offline SSID
  DEPENDS:=+gluon-core +kmod-batman-adv-legacy
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/gluon-offline-ssid/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,gluon-offline-ssid))
