#!/bin/bash

flashutils/detect.sh

sudo ../NUC970_NuWriter_CMD/build/bin/nuwriter -d NUC972DF62Y.ini -m nand -t data -e 0xFFFFFFFF
sudo ../NUC970_NuWriter_CMD/build/bin/nuwriter -d NUC972DF62Y.ini -m nand -t uboot -a 0x200 -w ../NUC970_Buildroot/output/images/u-boot-spl.bin
sudo ../NUC970_NuWriter_CMD/build/bin/nuwriter -d NUC972DF62Y.ini -m nand -t data -a 0x100000 -w ../NUC970_Buildroot/output/images/u-boot.bin
sudo ../NUC970_NuWriter_CMD/build/bin/nuwriter -d NUC972DF62Y.ini -m nand -t env -a 0x80000 -w ../NUC970_Buildroot/output/images/env.txt
sudo ../NUC970_NuWriter_CMD/build/bin/nuwriter -d NUC972DF62Y.ini -m nand -t data -a 0x200000 -w ../NUC970_Buildroot/output/images/uImage
sudo ../NUC970_NuWriter_CMD/build/bin/nuwriter -d NUC972DF62Y.ini -m nand -t data -a 0x500000 -w ../NUC970_Buildroot/output/images/rootfs.ubi

