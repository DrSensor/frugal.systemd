#!/bin/false

systemctl enable xautolock@$USER.service

kernel_version=`uname -r`
case $BASE_DISTRO in
	"archlinux" | "manjaro") kernel_version=`uname -r | grep -oPe '\d+\.\d+'`-`uname -m`;;
esac
systemctl enable kexec-load@$kernel_version.service
