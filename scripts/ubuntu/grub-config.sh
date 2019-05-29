#!/bin/bash

grub_cfg='/etc/default/grub'

sed -i "s|GRUB_CMDLINE_LINUX=.*|GRUB_CMDLINE_LINUX=\"net.ifnames=0 biosdevname=0\"|g" $grub_cfg

update-grub
