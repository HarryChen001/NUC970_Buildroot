#!/bin/bash

flashutils/detect.sh

sudo ../NUC970_NuWriter_CMD/build/bin/nuwriter -d NUC972DF62Y.ini -m nand -t data -a 0x200000 -w ../NUC970_Buildroot/output/images/uImage

