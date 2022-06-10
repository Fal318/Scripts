#! /bin/bash
python3 -m pip list -o | tail -n +3 | awk '{ print $1 }' | xargs python3 -m pip install -U
python3 -m pip check | tail -n +1 | awk '{ print $1 }' | xargs -I{} sh -c 'if [ {} != "No" ]; then python3 -m pip install -U {}; else exit; fi'
