# 
# Copyright (C) 2006-2009 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=dahdi-linux-complete
PKG_VERSION:=2.2.1+2.2.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=http://downloads.digium.com/pub/telephony/dahdi-linux-complete/
PKG_MD5SUM:=-

include $(INCLUDE_DIR)/package.mk

define Package/dahdi/Default
	TITLE:=Dahdi
	URL:=http://downloads.digium.com/
endef

define KernelPackage/dahdi/Default
	TITLE:=Dahdi
	URL:=http://downloads.digium.com/
	SUBMENU:=Dahdi modules
endef

define KernelPackage/dahdi-linux
	$(call KernelPackage/dahdi/Default)
	TITLE+= (kernel module)
	FILES:=$(PKG_BUILD_DIR)/linux/drivers/dahdi/dahdi.$(LINUX_KMOD_SUFFIX)
	AUTOLOAD:=$(call AutoLoad,70,dahdi)
endef

define KernelPackage/dahdi-linux/description
	This package contains the Dahdi core module
endef

define KernelPackage/dahdi-dummy
	$(call KernelPackage/dahdi/Default)
	TITLE+= (dummy module)
	FILES:=$(PKG_BUILD_DIR)/linux/drivers/dahdi/dahdi_dummy.$(LINUX_KMOD_SUFFIX)
	AUTOLOAD:=$(call AutoLoad,71,dahdi_dummy)
endef

define KernelPackage/dahdi-dummy/description
	A dummy driver that only provides a DAHDI timing source.
endef

define KernelPackage/dahdi-digium-digital
	$(call KernelPackage/dahdi/Default)
	TITLE+= (digium ditial device module)
	FILES:= $(PKG_BUILD_DIR)/linux/drivers/dahdi/wct1xxp.$(LINUX_KMOD_SUFFIX) \
		$(PKG_BUILD_DIR)/linux/drivers/dahdi/wct4xxp/wct4xxp.$(LINUX_KMOD_SUFFIX) \
		$(PKG_BUILD_DIR)/linux/drivers/dahdi/wcte12xp/wcte12xp.$(LINUX_KMOD_SUFFIX) \
		$(PKG_BUILD_DIR)/linux/drivers/dahdi/wcte11xp.$(LINUX_KMOD_SUFFIX) \
		$(PKG_BUILD_DIR)/linux/drivers/dahdi/wcb4xxp/wcb4xxp.$(LINUX_KMOD_SUFFIX) \
		$(PKG_BUILD_DIR)/linux/drivers/dahdi/tor2.$(LINUX_KMOD_SUFFIX)
	AUTOLOAD:=$(call AutoLoad,71,wct1xxp wct4xxp wcte12xp wcte11xp wcb4xxp tor2)
endef

define KernelPackage/dahdi-digium-digial/description
	Digital Telphony Devices
	- wct4xxp:
	  * Digium TE205P/TE207P/TE210P/TE212P: PCI dual-port T1/E1/J1
	  * Digium TE405P/TE407P/TE410P/TE412P: PCI quad-port T1/E1/J1
	  * Digium TE220: PCI-Express dual-port T1/E1/J1
	  * Digium TE420: PCI-Express quad-port T1/E1/J1
	- wcte12xp:
	  * Digium TE120P: PCI single-port T1/E1/J1
	  * Digium TE121: PCI-Express single-port T1/E1/J1
	  * Digium TE122: PCI single-port T1/E1/J1
	- wcte11xp:
	  * Digium TE110P: PCI single-port T1/E1/J1
	- wct1xxp: 
	  * Digium T100P: PCI single-port T1
	  * Digium E100P: PCI single-port E1
	- wcb4xxp:
	  * Digium B410: PCI quad-port BRI
	- wcb4xxp:
	  * Digium B410: PCI quad-port BRI
	- tor2: Tormenta quad-span T1/E1 card from the Zapata Telephony project
endef


define KernelPackage/dahdi-digium-analog
	$(call KernelPackage/dahdi/Default)
	TITLE+= (digium analog device module)
	FILES:= $(PKG_BUILD_DIR)/linux/drivers/dahdi/voicebus/dahdi_voicebus.$(LINUX_KMOD_SUFFIX) \
		$(PKG_BUILD_DIR)/linux/drivers/dahdi/dahdi_vpmadt032_loader.$(LINUX_KMOD_SUFFIX) \
		$(PKG_BUILD_DIR)/linux/drivers/dahdi/wctdm24xxp/wctdm24xxp.$(LINUX_KMOD_SUFFIX) \
		$(PKG_BUILD_DIR)/linux/drivers/dahdi/wctdm.$(LINUX_KMOD_SUFFIX) \
		$(PKG_BUILD_DIR)/linux/drivers/dahdi/wcfxo.$(LINUX_KMOD_SUFFIX)
	AUTOLOAD:=$(call AutoLoad,71,wctdm24xxp, wctdm, wcfxo)
endef

define KernelPackage/dahdi-analog/description
	Analog Telphony Devices
	- wctdm24xxp: 
	  * Digium TDM2400P/AEX2400: up to 24 analog ports
	  * Digium TDM800P/AEX800: up to 8 analog ports
	  * Digium TDM410P/AEX410: up to 4 analog ports
	- wctdm:
	  * Digium TDM400P: up to 4 analog ports
	- wcfxo: X100P, similar and clones. A simple single-port FXO card
endef

define KernelPackage/dahdi-xpp
	$(call KernelPackage/dahdi/Default)
	TITLE+= (xorcom astribank modules)
	FILES:= $(PKG_BUILD_DIR)/linux/drivers/dahdi/xpp/xpd_fxo.$(LINUX_KMOD_SUFFIX) \
		$(PKG_BUILD_DIR)/linux/drivers/dahdi/xpp/xpp.$(LINUX_KMOD_SUFFIX) \
		$(PKG_BUILD_DIR)/linux/drivers/dahdi/xpp/xpd_bri.$(LINUX_KMOD_SUFFIX) \
		$(PKG_BUILD_DIR)/linux/drivers/dahdi/xpp/xpd_fxs.$(LINUX_KMOD_SUFFIX) \
		$(PKG_BUILD_DIR)/linux/drivers/dahdi/xpp/xpp_usb.$(LINUX_KMOD_SUFFIX) \
		$(PKG_BUILD_DIR)/linux/drivers/dahdi/xpp/xpd_pri.$(LINUX_KMOD_SUFFIX)
	AUTOLOAD:=$(call AutoLoad,71,xpp xpd_bri xpd_fxs xpp_usb xpd_pri)
endef

define KernelPackage/dahdi-digium-xpp/description
  Xorcom Astribank- a USB connected unit of up to 32 ports
  (including the digital BRI and E1/T1 modules)
endef

define KernelPackage/dahdi-zapata-pciradio
	$(call KernelPackage/dahdi/Default)
	TITLE+= (zapata PCI radio modules)
	FILES:= $(PKG_BUILD_DIR)/linux/drivers/dahdi/pciradio.$(LINUX_KMOD_SUFFIX)
	AUTOLOAD:=$(call AutoLoad,71,pciradio)
endef

define KernelPackage/dahdi-zapata-pciradio/description
	Zapata Telephony PCI Quad Radio Interface
endef

define KernelPackage/dahdi-digium-transcoder
	$(call KernelPackage/dahdi/Default)
	TITLE+= (digium transcoder modules)
	FILES:= $(PKG_BUILD_DIR)/linux/drivers/dahdi/dahdi_transcode.$(LINUX_KMOD_SUFFIX) \
	  $(PKG_BUILD_DIR)/linux/drivers/dahdi/wctc4xxp/wctc4xxp.$(LINUX_KMOD_SUFFIX)
	AUTOLOAD:=$(call AutoLoad,71,dahdi_transcode wctc4xxp)
endef

define KernelPackage/dahdi-digium-transcoder/description
	Digium hardware transcoder cards (wctc4xxp)
endef

define KernelPackage/dahdi-dynamic
	$(call KernelPackage/dahdi/Default)
	TITLE+= (dynamic driver modules)
	FILES:= $(PKG_BUILD_DIR)/linux/drivers/dahdi/dahdi_dynamic.$(LINUX_KMOD_SUFFIX) \
		$(PKG_BUILD_DIR)/linux/drivers/dahdi/dahdi_dynamic_loc.$(LINUX_KMOD_SUFFIX) \
		$(PKG_BUILD_DIR)/linux/drivers/dahdi/dahdi_dynamic_eth.$(LINUX_KMOD_SUFFIX)
	AUTOLOAD:=$(call AutoLoad,71,dahdi_dynamic dahdi_dynamic_loc dahdi_dynamic_eth)
endef

define KernelPackage/dahdi-dynamic/description
	Dahdi Dynamic drivers
	- dahdi_dynamic_eth: TDM over Ethernet (TDMoE) driver. Requires dahdi_dynamic
	- dahdi_dynamic_loc: Mirror a local span. Requires dahdi_dynamic
endef

define KernelPackage/dhadi-echocancel
	$(call KernelPackage/dahdi/Default)
	TITLE+= (echo canceler modules)
	FILES:= $(PKG_BUILD_DIR)/linux/drivers/dahdi/dahdi_echocan_kb1.$(LINUX_KMOD_SUFFIX) \
		$(PKG_BUILD_DIR)/linux/drivers/dahdi/dahdi_echocan_mg2.$(LINUX_KMOD_SUFFIX) \
		$(PKG_BUILD_DIR)/linux/drivers/dahdi/dahdi_echocan_sec.$(LINUX_KMOD_SUFFIX) \
		$(PKG_BUILD_DIR)/linux/drivers/dahdi/dahdi_echocan_sec2.$(LINUX_KMOD_SUFFIX) \
		$(PKG_BUILD_DIR)/linux/drivers/dahdi/dahdi_echocan_jpah.$(LINUX_KMOD_SUFFIX)
	AUTOLOAD:=$(call AutoLoad,71,dahdi_echocan_kb1 dahdi_echocan_mg2 dahdi_echocan_sec dahdi_echocan_sec2 dahdi_echocan_jpah )
endef

define KernelPackage/dhadi-echocancel/description
Dahdi echo cancel modules.
endef

define Package/dahdi-util
	$(call Package/dahdi/Default)
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE+= utils
	DEPENDS += +kmod-dahdi-linux
endef

define Package/dahdi-util/description
 This package contains the dahdi_test program
endef

define Package/dahdi-libtonezone
	$(call Package/dahdi/Default)
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE+= libtonezone (library)
	DEPENDS += +kmod-dahdi-linux
endef

define Package/dahdi-libtonezone/description
	This package contains the libraries for accessing dahdi/dummy drivers.
endef

CONFIGURE_PATH := tools
TARGET_CFLAGS += -I"$(PKG_BUILD_DIR)/linux/include" -I"$(STAGING_DIR)/usr/include" -L"$(STAGING_DIR)/usr/lib"
MAKE_FLAGS:= \
        ARCH="$(LINUX_KARCH)" \
        CC="$(TARGET_CC) $(TARGET_CFLAGS)" \
        LD="$(TARGET_CROSS)ld" \
        CROSS_COMPILE="$(TARGET_CROSS)" \
        KVERS="$(LINUX_VERSION)" \
        KSRC="$(LINUX_DIR)" \
        TOPDIR_MODULES="dahdi dahdidummy" \
        SUBDIR_MODULES=""

define Build/Compile/kmod
	$(MAKE) -C $(PKG_BUILD_DIR)/linux \
		$(MAKE_FLAGS) \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		modules install-include 
endef


define Build/Compile/user
	$(MAKE) -C $(PKG_BUILD_DIR)/linux \
			$(MAKE_FLAGS) \
			DESTDIR="$(PKG_INSTALL_DIR)" \
			install-xpp-firm install-firmware ; \
		$(MAKE) -C $(PKG_BUILD_DIR)/tools \
			ARCH="$(LINUX_KARCH)" \
			DESTDIR="$(PKG_INSTALL_DIR)" \
			EXTRA_LIBS=-L"$(STAGING_DIR)/usr/lib" \
			install-libs install-utils
endef

define Build/Compile
	$(call Build/Compile/kmod)
	$(call Build/Compile/user)
endef

define Build/InstallDev
	$(INSTALL_DIR)  $(STAGING_DIR)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/dahdi $(STAGING_DIR)/usr/include/
	$(INSTALL_DIR)  $(STAGING_DIR)/usr/lib
	$(CP)  $(PKG_INSTALL_DIR)/usr/lib/libtonezone.* $(STAGING_DIR)/usr/lib/
endef

define Package/dahdi-util/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/sbin/* $(1)/usr/bin/
endef

define Package/dahdi-libtonezone/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libtonezone.so.* $(1)/usr/lib/
endef

$(eval $(call KernelPackage,dahdi-linux))
$(eval $(call KernelPackage,dahdi-dummy))
$(eval $(call KernelPackage,dahdi-digium-digital))
$(eval $(call KernelPackage,dahdi-digium-analog))
$(eval $(call KernelPackage,dahdi-xpp))
$(eval $(call KernelPackage,dahdi-zapata-pciradio))
$(eval $(call KernelPackage,dahdi-digium-transcoder))
$(eval $(call KernelPackage,dahdi-dynamic))
$(eval $(call KernelPackage,dhadi-echocancel))
$(eval $(call BuildPackage,dahdi-util))
$(eval $(call BuildPackage,dahdi-libtonezone))

