#-------------------------------------------------------------------------------
# Copyright (c) 2022-2024, Arm Limited. All rights reserved.
#
# SPDX-License-Identifier: BSD-3-Clause
#
#-------------------------------------------------------------------------------

set(DEFAULT_NS_SCATTER           ON         CACHE BOOL      "Use default NS scatter files for target")
set(PROVISIONING_KEYS_CONFIG     ""         CACHE FILEPATH  "The config file which has the keys and seeds for provisioning")

set(S_DATA_OVERALL_SIZE      "0x20000"    CACHE STRING    "Secure data size")
set(FLASH_S_PARTITION_SIZE   "0x80000"    CACHE STRING    "Secure code size")
set(FLASH_NS_PARTITION_SIZE  "0x300000"   CACHE STRING    "Non-secure code size")

if(BL2)
    set(BL2_TRAILER_SIZE 0x800 CACHE STRING "Trailer size")
else()
    #No header if no bootloader, but keep IMAGE_CODE_SIZE the same
    set(BL2_TRAILER_SIZE 0xC00 CACHE STRING "Trailer size")
endif()

set(TFM_PXN_ENABLE                    ON    CACHE BOOL    "Use Privileged execute never (PXN)")

# Platform-specific configurations
set(CONFIG_TFM_USE_TRUSTZONE          ON)
set(TFM_MULTI_CORE_TOPOLOGY           OFF)

# Ethos-U NPU configurations
set(ETHOSU_ARCH                       "U65"            CACHE STRING    "Ethos-U NPU type [U65]")
set(ETHOS_DRIVER_PATH                 "DOWNLOAD"  CACHE PATH      "Path to Ethos-U Core Driver (or DOWNLOAD to fetch automatically")
set(ETHOSU_LOG_SEVERITY               "-1"        CACHE STRING    "Ethos-U Core Driver log severity")

set(PLATFORM_SVC_HANDLERS               ON              CACHE BOOL     "Platform specific SVC handlers")
set(PROVISIONING_CODE_PADDED_SIZE       "0x2000"        CACHE STRING   "")
set(PROVISIONING_VALUES_PADDED_SIZE     "0x3800"        CACHE STRING   "")
set(PROVISIONING_DATA_PADDED_SIZE       "0x1000"        CACHE STRING   "")
set(CRYPTO_HW_ACCELERATOR               OFF             CACHE BOOL     "Whether to enable the crypto hardware accelerator on supported platforms")
set(BL1                                 ON              CACHE BOOL     "Whether to build BL1")
set(PLATFORM_DEFAULT_BL1                ON              CACHE STRING   "Whether to use default BL1 or platform-specific one")
set(TFM_BL1_SOFTWARE_CRYPTO             ON              CACHE BOOL     "Whether BL1_1 will use software crypto")
set(TFM_BL1_MEMORY_MAPPED_FLASH         ON              CACHE BOOL     "Whether BL1 can directly access flash content")
set(TFM_BL1_PQ_CRYPTO                   OFF             CACHE BOOL     "Enable LMS PQ crypto for BL2 verification. This is experimental and should not yet be used in production")
set(CONFIG_TFM_BOOT_STORE_MEASUREMENTS  ON              CACHE BOOL     "")
set(TFM_BL2_IMAGE_FLASH_AREA_NUM        "BL2"           CACHE STRING   "Which flash area BL2 is stored in")
set(PLATFORM_DEFAULT_OTP                OFF             CACHE BOOL     "Use trusted on-chip flash to implement OTP memory")
set(PLATFORM_DEFAULT_PROVISIONING       OFF             CACHE BOOL     "Use default provisioning implementation")
set(TFM_BL1_DEFAULT_PROVISIONING        OFF             CACHE BOOL     "Whether BL1_1 will use default provisioning")
set(PLATFORM_DEFAULT_CRYPTO_KEYS        OFF             CACHE BOOL     "Use default crypto keys implementation.")
set(PLATFORM_DEFAULT_NV_SEED            ON              CACHE BOOL     "Use default NV seed implementation.")
set(PLATFORM_DEFAULT_ATTEST_HAL         OFF             CACHE BOOL     "Use default attest hal implementation.")
set(PLATFORM_DEFAULT_NV_COUNTERS        OFF             CACHE BOOL     "Use default nv counter implementation.")
set(PLATFORM_HAS_PS_NV_OTP_COUNTERS     ON              CACHE BOOL     "Platform supports nvm counters for PS in OTP")

set(BL1_SHARED_SYMBOLS_PATH         ${TARGET_PLATFORM_PATH}/bl1/bl1_1_shared_symbols.txt CACHE FILEPATH "Path to list of symbols that BL1_1 that can be referenced from BL1_2")
set(RTL_KEY_PATH                    ${TARGET_PLATFORM_PATH}/provisioning/tci_krtl.bin    CACHE FILEPATH "Path to binary RTL key for encrypting provisioning bundles")

set(TP_MODE                         0x111155AA CACHE STRING "Whether system is in Test or Production mode")
