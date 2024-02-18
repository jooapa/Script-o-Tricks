:: Add the current directory to the PATH
:: Usage: set-to-path.bat

@ECHO OFF
echo Current Path: %CD%
echo Do you want add the current directory to the PATH? (y/n)

set /p addtopath=

if /I "%addtopath%"=="y" (
    IF EXIST c:\whatever\else (
        echo The directory is already in the PATH.
        exit
    ) else (
        SET PATH="%PATH%;%CD%"
        echo The directory has been added to the PATH.
        exit
    )
) 
else if /I "%addtopath%"=="n" (
    echo fine then...
    exit
)
else (
    echo Invalid input.
    exit
)