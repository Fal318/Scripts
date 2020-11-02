#! /bin/bash
python3 -m pip list -o | tail -n +3 | awk '{ print $1 }' | xargs python3 -m pip install -U
package=`python3 -m pip check | awk '{ print $1 }'`
if [ ! ${#package[0]} == "No" ]; then
    for p in $package; do
        python3 -m pip install -U $p
    done
fi
