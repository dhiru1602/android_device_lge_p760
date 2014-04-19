#
# Copyright (C) 2012 The CyanogenMod Project
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
#

# Include common makefile
$(call inherit-product, device/lge/u2-common/common.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# NFC Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.port=I2C \
    lge.nfc.fwpatchv13=yes \
    lge.nfc.indicator=yes \
    lge.nfc.defaultonoff=on

# NFC stuffs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfcee_access.xml:system/etc/nfcee_access.xml

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml

# NFC packages
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag

