#!/bin/bash

cp board/didalink/wg40/env.txt output/images/

sed -i 's/^::once:-\/bin\/sh/#::once:-\/bin\/sh/' output/target/etc/inittab
