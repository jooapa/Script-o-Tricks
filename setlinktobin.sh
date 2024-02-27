# setlinktobin.sh will create a symbolic link to the /usr/local/bin directory
# Usage: setlinktobin.sh [program]

# get the current directory
CURDIR=$(pwd)

# check if the program exists
if [ -f "$CURDIR/$1" ]; then
    echo "creating a symbolic link to /usr/local/bin"
    sudo ln -s "$CURDIR/$1" /usr/local/bin
else
    echo "No such file found"
fi
