
@echo off
setlocal enabledelayedexpansion

set currDir=%~dp0

echo --------------------------------------------------------
echo Assembling everything and building ROM... Please wait...
echo --------------------------------------------------------

cd "!currDir!Text"
echo Assembling text...
call "AssembleText.bat" noPause

cd "!currDir!Tables"
echo Assembling tables...
call "AssembleTables.bat" noPause

cd "!currDir!"
call "MAKEHACK.cmd" noPause

pause
