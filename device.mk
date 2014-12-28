# Copyright (C) 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/xilinx/zedboard-kernel/uImage
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

DEVICE_PACKAGE_OVERLAYS := \
    device/xilinx/zedboard/overlay

# default is nosdcard, S/W button enabled in resource
PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_PROPERTY_OVERRIDES += \
    net.dns1=8.8.8.8 \
    net.dns2=8.8.4.4 \
    net.dnschange=118 \
    net.eth0.dns1=8.8.8.8 \
    net.eth0.dns2=8.8.4.4 \
    dhcp.eth0.dns1=8.8.8.8 \
    dhcp.eth0.dns2=8.8.4.4 \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.boot.fake_battery=1 \
    ro.config.low_ram=true \
    dalvik.vm.jit.codecachesize=0 \
    dalvik.vm.heapsize=32m \
    dalvik.vm.image-dex2oat-Xms=32m \
    dalvik.vm.image-dex2oat-Xmx=64m \
    dalvik.vm.dex2oat-Xms=32m \
    dalvik.vm.dex2oat-Xmx=64m

#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.sf.lcd_density=240

PRODUCT_PACKAGES += \
    libGLES_android \
    libGLES_mesa

PRODUCT_LOCALES := en_US

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):uImage \
    device/xilinx/zedboard/init.xilinxzynqplatform.rc:root/init.xilinxzynqplatform.rc \
    device/xilinx/zedboard/fstab.xilinxzynqplatform:root/fstab.xilinxzynqplatform \
    device/xilinx/zedboard/swapinit.sh:root/sbin/swapinit.sh

