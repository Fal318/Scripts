"""This program is upgrade pip packages"""
import subprocess

update_package = [
    o.split(" ")[0] for o in subprocess.getoutput("python3 -m pip list -o").split("\n")[2:]
]

for packages in update_package:
    subprocess.getoutput(f"python3 -m pip install -U {packages}")

while True:
    broken_package = [
        o.split(" ")[0] for o in subprocess.getoutput("python3 -m pip check").split("\n")
    ]
    if len(broken_package) == 1:
        break
    for packages in broken_package:
        subprocess.getoutput(f"python3 -m pip install -U {packages}")
