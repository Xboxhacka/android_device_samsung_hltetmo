# Copyright (C) 2013 OmniROM Project
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

# Inherit device configuration
$(call inherit-product, device/samsung/hltetmo/full_hltetmo.mk)

## Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/omni/config/nfc_enhanced.mk)

# Inherit from our omni product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_hltetmo
PRODUCT_DEVICE := hltetmo
PRODUCT_MODEL := SM-N900T
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=hltetmo TARGET_DEVICE=hltetmo BUILD_FINGERPRINT="samsung/hltetmo/hltetmo:4.3/JSS15J/N900TUVUBMI7:user/release-keys" PRIVATE_BUILD_DESC="hltetmo-user 4.3 JSS15J N900TUVUBMI7 release-keys"