@echo off
setlocal

set /p nircmd=nircmd directory path:
set /p handle=Handle.exe path:

REM set nircmd=C:\Users\cr545\Documents\backup\My Files\Utils\nircmd-x64
REM set handle=C:\Users\cr545\Documents\backup\My Files\Utils\Handle\handle64.exe

set file=file.reg
echo Windows Registry Editor Version 5.00> %file%
echo [HKEY_CLASSES_ROOT\*\shell\Find handle]>> %file%
echo "HasLUAShield"="">> %file%
echo [HKEY_CLASSES_ROOT\*\shell\Find handle\command]>> %file%
echo @="\"%nircmd:\=\\%\\nircmd.exe\" elevate cmd /K \"\"%handle:\=\\%\" \"%%1\"\"">> %file% 

set file=directory_background.reg
echo Windows Registry Editor Version 5.00> %file%
echo [HKEY_CLASSES_ROOT\Directory\Background\shell\Find handle]>> %file%
echo @="">> %file%
echo "HasLUAShield"="">> %file%
echo [HKEY_CLASSES_ROOT\Directory\Background\shell\Find handle\command]>> %file% 
echo @="\"%nircmd:\=\\%\\nircmd.exe\" elevate cmd /K \"\"%handle:\=\\%\" \"%%V\"\"">> %file% 

set file=directory.reg
echo Windows Registry Editor Version 5.00> %file%
echo [HKEY_CLASSES_ROOT\Directory\shell\Find handle]>> %file%
echo @="">> %file%
echo "HasLUAShield"="">> %file%
echo [HKEY_CLASSES_ROOT\Directory\shell\Find handle\command]>> %file%
echo @="\"%nircmd:\=\\%\\nircmd.exe\" elevate cmd /K \"\"%handle:\=\\%\" \"%%1\"\"">> %file%