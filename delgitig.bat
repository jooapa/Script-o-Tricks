:: delgitig.bat on the root of the git repository
:: delete all files from .gitignore
:: use with caution
:: Usage: delgitig.bat

@ECHO OFF

if not exist .git (
    echo .git not found
    exit
)

if not exist .gitignore (
    echo .gitignore not found
    exit
)

git add -A
git commit -m "delgitig COMMIT"
git clean -xdn

ECHO press y to delete all files from .gitignore (y/n)

set /p delgitig=

if %delgitig%==y (
    git clean -xdf
) else (
    echo NONONO
)
