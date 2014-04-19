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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

include $(SRC_TARGET_DIR)/board/generic/BoardConfig.mk


TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi
TARGET_CPU_VARIANT := arm11
TARGET_ARCH_VARIANT_CPU := arm1176jzf-s
ARCH_ARM_HAVE_TLS_REGISTER := false
TARGET_BOARD_PLATFORM := rpi_modelb

TARGET_KERNEL_CONFIG := bcmrpi_android_defconfig

