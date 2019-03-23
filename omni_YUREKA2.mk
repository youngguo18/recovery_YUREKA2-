#
# Copyright (C) 2017 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := YUREKA2

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8953

# Device identifier. This must come after all inclusions

# Encryption
PRODUCT_PACKAGES += \
    libcryptfs_hw

# Kernel
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/Image.gz-dtb:kernel

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := YUREKA2
PRODUCT_NAME := omni_YUREKA2
PRODUCT_BRAND := YU
PRODUCT_MODEL := YU5551
PRODUCT_MANUFACTURER := YU

TARGET_VENDOR_PRODUCT_NAME := YUREKA2
TARGET_VENDOR_DEVICE_NAME := YUREKA2
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=YUREKA2 PRODUCT_NAME=YUREKA2
