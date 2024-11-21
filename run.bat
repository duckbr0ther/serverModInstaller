@echo off
cls

goto loop

:loop

echo Server Mod Downloader
echo(
echo(
echo 1. Python Install
echo 2. Fabric Install
echo 3. Mod Install
echo 4. Mod Update
echo 5. Exit

set /p input=">>> "

if %input%==1 (
    cls
    echo IMPORTANT : CHECK add to PATH!!!!!! Add python.exe to PATH. type [okay] to proceed. 
    set /p input=">>> "
    rem if not %input%=="okay" goto loop

    @mkdir PyInstall
    powershell.exe "Invoke-webrequest 'https://www.python.org/ftp/python/3.13.0/python-3.13.0-amd64.exe' -outfile './PyInstall/pyInstall.exe'"
    start /d "./PyInstall/" pyInstall.exe
    cls
    goto loop
)

if %input%==2 (
    echo 2
)

if %input%==3 (
    cls
    pip install gdown
    cls
    py ./Script/installMod.py
    cls
)

if %input%==4 (
    rem start /d ./ updateMod.py
    echo 4
)

if %input%==5 (
    cls
    Exit
)

goto loop
