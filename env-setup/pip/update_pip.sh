#! /bin/bash
pip3 list -o | tail -n +3 | awk '{ print $1 }' | xargs pip3 install -U
package=`pip3 check | awk '{ print $1 }'`
if [ ! ${#package[0]} == "No" ]; then
    for p in $package; do
        pip3 install -U $p
    done
fi
