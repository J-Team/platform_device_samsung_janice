# Copyright (C) 2012 The Android Open Source Project
# Copyright (C) 2014 J-Team - Alberto Pedron
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Custom OTA commands for janicep devices"""


def FullOTA_InstallBegin(info):
        info.script.AppendExtra('mount("ext4", "EMMC", "/dev/block/mmcblk0p3", "/system");')
#       info.script.AppendExtra('run_program("/sbin/sh", "-c", "busybox cp -R /system/build.prop /tmp/build.prop");')
        info.script.AppendExtra('run_program("busybox", "cp", "/system/build.prop", "/tmp/build.prop");')
        info.script.AppendExtra('ifelse(is_substring("GT-I9070P", getprop("ro.product.model")), ui_print("Your Device is GT-I9070P"));')
        info.script.AppendExtra('set_perm(0, 0, 0777, "/tmp/build.prop");')

def FullOTA_InstallEnd(info):
#        info.script.AppendExtra('ifelse(is_substring("GT-I9070P", file_getprop("/tmp/build.prop", "ro.product.model")), run_program("/sbin/busybox", "setprop", "ro.product.model", "GT-I9070P");')
        info.script.AppendExtra('ifelse(is_substring("GT-I9070P", file_getprop("/tmp/build.prop", "ro.product.model")), run_program("/sbin/sh", "-c", "busybox setprop ro.product.model GT-I9070P"));')
        info.script.AppendExtra('ifelse(is_substring("GT-I9070P", file_getprop("/tmp/build.prop", "ro.product.model")), run_program("/sbin/sh", "-c", "busybox setprop ro.product.name GT-I9070P"));')
        info.script.AppendExtra('ifelse(is_substring("GT-I9070P", file_getprop("/tmp/build.prop", "ro.product.model")), run_program("/sbin/sh", "-c", "busybox setprop ro.product.device GT-I9070P"));')
        info.script.AppendExtra('ifelse(is_substring("GT-I9070P", file_getprop("/tmp/build.prop", "ro.product.model")), ui_print("Copying GT-I9070P Tee files..."));')
	info.script.AppendExtra('ifelse(is_substring("GT-I9070P", file_getprop("/tmp/build.prop", "ro.product.model")), run_program("/sbin/sh", "-c", "busybox cp -R /system/lib/teeP/* /system/lib/tee/"));')
	info.script.AppendExtra('delete_recursive("/system/lib/teeP");')
