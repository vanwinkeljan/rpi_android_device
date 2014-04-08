# Copyright (C) 2013 Jan Van Winkel
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

DEVICE_PACKAGE_OVERLAYS :=

PRODUCT_COPY_FILES += \
    device/raspberrypi/modelb/fstab.modelb:root/fstab.modelb \
    device/raspberrypi/modelb/init.bcm2708.rc:root/init.bcm2708.rc

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=wifi-only
    hw.nobattery=true

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

PRODUCT_NAME := full_modelb
PRODUCT_DEVICE := modelb
PRODUCT_BRAND := Android
PRODUCT_MODEL := Full Android on Raspberry Pi Model B
