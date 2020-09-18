#! /bin/bash
pip list -o | tail -n +3 | awk '{ print $1 }' | xargs pip install -U
package=`pip check | awk '{ print $1 }'`
if [ ${#package[0]} == "No" ]; then
    echo "OK"
else
    for p in $package; do
        pip install -U $p
    done
fi
