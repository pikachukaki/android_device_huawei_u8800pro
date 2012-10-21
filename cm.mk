# Correct bootanimation size for the screen
TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit device configuration
$(call inherit-product, device/huawei/u8800pro/u8800pro.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Setup device configuration

PRODUCT_NAME := cm_u8800pro
PRODUCT_DEVICE := u8800pro
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := U8800Pro
PRODUCT_MANUFACTURER := Huawei
PRODUCT_RELEASE_NAME := U8800PRO

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=u8800pro \
	BUILD_FINGERPRINT=huawei/u8800pro:4.0.4/IMM76L/223133:userdebug/test-keys \
	PRIVATE_BUILD_DESC="huawei-user 4.0.4 IMM76L 223133 test-keys" \
	BUILD_NUMBER=223134
