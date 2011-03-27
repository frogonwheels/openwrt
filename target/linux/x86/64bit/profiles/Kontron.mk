#
# Copyright (C) 2006-2009 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/Kontron
  NAME:=Kontron
  PACKAGES:= alsa-lib alsa-utils anyremote kmod-r8169 kmod-sound-intel-hd kmod-usb2 kmod-usb-storage
endef
# kmod-ata-piix kmod-ata-ahci

define Profile/Kontron/Description
	Kontron Profile
endef
$(eval $(call Profile,Kontron))