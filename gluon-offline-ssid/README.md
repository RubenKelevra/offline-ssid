offline-ssid
============

Offline SSID-Script for Freifunk-Nodes

Warning: If SSID was changed in UCI, which belongs to freifunk, you need to run "wifi" before you rerun this script again.

Warning: This package has been only tested for batman-adv 2014.x / batctl 2014.x if you want to run it under version 2013.x also known as legacy-batman-adv, please test it locally first, before deploing it to your network.

This script expect that an temporary SSID is set on boot, named boot-ssid. The Script will read ssid_online and set it when node is online. To add this support to gluon, use this patch:
https://github.com/VfN-NRW/gluon/blob/2014.4.x/patches/packages/gluon/0010-change-uci-uris-for-ssid-to-support-offline-ssid.patch

This script has been changed for the master of gluon (2015.1.x-pre), since 2014.4.x uses other names for the wifi-devices, you have to change the device names or apply this patch to gluon:
https://github.com/VfN-NRW/gluon/blob/2014.4.x/patches/packages/gluon/0004-backport-wlan-device-name-changes-from-master.patch

After adding the needed patch(es) to gluon, do the following to add this package to your gluon firmware:

Add this git to your modules:
-append the module "offlinessid" to GLUON_SITE_FEEDS in modules  
-append the following to fetch this repo:  
`PACKAGES_OFFLINESSID_REPO=https://github.com/FF-NRW/offline-ssid.git`  `PACKAGES_OFFLINESSID_COMMIT=6c06021e5bfde2ffb708fddd5b2279e4505323da`  

Add the now avaible package gluon-offline-ssid as wanted package for your gluon-build at site.mk to the var "GLUON_SITE_PACKAGES".


