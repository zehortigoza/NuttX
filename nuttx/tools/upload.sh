#!/bin/bash

BASEDIR=$(dirname $0)

python $BASEDIR/bl_mkfw.py --prototype configs/px4fmu-v2_upstream/px4fmu-v2_upstream.prototype --image nuttx.bin > nuttx.nxbl
python $BASEDIR/bl_uploader.py --port /dev/tty.usbmodem1 nuttx.nxbl
