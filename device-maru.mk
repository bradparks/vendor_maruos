#
# Copyright 2015-2016 Preetam J. D'Souza
# Copyright 2016 The Maru OS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# early build definitions for maru
include $(LOCAL_PATH)/maru_build.mk

# init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.maru.rc:root/init.maru.rc

# input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/excluded-input-devices.xml:system/etc/excluded-input-devices.xml

# container
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/desktop-rootfs.tar.gz:system/maru/containers/jessie/jessie-rootfs.tar.gz \
    $(LOCAL_PATH)/container/jessie/config:system/maru/containers/jessie/config \
    $(LOCAL_PATH)/container/jessie/fstab:system/maru/containers/jessie/fstab \
    $(LOCAL_PATH)/container/mcprepare.sh:system/bin/mcprepare

# LXC
PRODUCT_PACKAGES += liblxc

# bootanim
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/mbootanim.zip:system/media/bootanimation.zip

# PerspectiveService
PRODUCT_PACKAGES += \
    libperspective \
    perspectived

# mflinger
PRODUCT_PACKAGES += \
    libmaru \
    mflinger

# busybox
PRODUCT_PACKAGES += busybox

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.maru.version=$(MARU_BUILD_VERSION)
