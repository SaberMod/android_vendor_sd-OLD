# Copyright (C) 2014 AOSPAL
# Copyright (C) 2014 SaberMod
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

# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_VERSION_TAGS=release-keys \
    USER=android-build \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    BUILD_UTC_DATE=$(shell date +"%s")

# Enable ADB authentication
PRODUCT_PROPERTY_OVERRIDES += \
    ro.adb.secure=1

# Extra packages
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf \
    ScreenRecorder \
    libscreenrecorder

# Kernel modules support
PRODUCT_COPY_FILES += \
    vendor/sd/prebuilt/etc/init.d/999Sync:system/etc/init.d/999Sync
