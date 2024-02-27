# delgitig.sh on the root of the git repository
# delete all files from .gitignore
# use with caution
# Usage: delgitig.sh

# get the current directory
CURDIR=$(pwd)

GITIGFILE="$CURDIR/.gitignore"
DOTGIT="$CURDIR/.git"

# check if the gitignore file exists
if [ -f "$GITIGFILE" ]; 

else
    echo "No .gitignore file found"
fi

# check if the .git directory exists
if [ -d "$DOTGIT" ];
else
    echo "No .git directory found"
fi

git add -A
git commit -m "delgitig COMMIT"
git clean -xdn

read -p "press y to delete all files from .gitignore (y/n): " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "deleting all files from .gitignore"
    git clean -xdf
else
    echo "aborting"
    git reset --soft HEAD~1
    git reset
fi

