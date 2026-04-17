#!/bin/bash

cd kernel-5.10
python scripts/gen_build_config.py --kernel-defconfig gta9_00_defconfig --kernel-defconfig-overlays "entry_level.config ot11.config" -m user -o ../out/target/product/gta9/obj/KERNEL_OBJ/build.config

export ARCH=arm64
export PLATFORM_VERSION=13
export CROSS_COMPILE="aarch64-linux-gnu-"
export CROSS_COMPILE_COMPAT="arm-linux-gnueabi-"
export OUT_DIR="../out/target/product/gta9/obj/KERNEL_OBJ"
export DIST_DIR="../out/target/product/gta9/obj/KERNEL_OBJ"
export BUILD_CONFIG="../out/target/product/gta9/obj/KERNEL_OBJ/build.config"
export KMI_SYMBOL_LIST_STRICT_MODE=0
export ABI_DEFINITION=

cd ../kernel
./build/build.sh
