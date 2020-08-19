"""This program is upgrade pip packages"""
import sys
import subprocess

def get_lines(cmd):
    """output logs"""
    proc = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)

    while True:
        line = proc.stdout.readline()
        if line:
            print(line.decode('utf-8'))

        if not line and proc.poll() is not None:
            break
def main():
    """main"""
    update_package = [
        o.split(" ")[0] for o in subprocess.getoutput("python3 -m pip list -o").split("\n")[2:]
    ]

    for packages in update_package:
        get_lines(f"python3 -m pip install -U {packages}")

    while True:
        broken_package = [
            o.split(" ")[0] for o in subprocess.getoutput("python3 -m pip check").split("\n")
        ]
        if len(broken_package) == 1:
            break
        for packages in broken_package:
            get_lines(f"python3 -m pip install -U {packages}")


if __name__ == '__main__':
    main()
