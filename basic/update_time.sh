#!/bin/bash
# https://qiita.com/Navier/items/0ec8b26f614da41416e8
sudo date --set "$(wget -q http://worldtimeapi.org/api/timezone/Asia/Tokyo.txt -O - | grep ^datetime | cut -d " " -f 2)"
