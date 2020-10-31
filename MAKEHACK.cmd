
@echo off
setlocal enabledelayedexpansion

set INPUT=%~dp0Clean.gba
set OUTPUT=%~dp0New.gba
set OUTPUT_UPS=%~dp0New.ups
set MASTER=%~dp0Master.event
rem You can change these filenames to whatever you like. Don't change the "%~dp0", though!

echo ---------------------------

set currDir=%~dp0

rem Copy our clean ROM to overwrite our edited ROM, so EA has a clean ROM to work with.
copy "%INPUT%" "%OUTPUT%"

rem Move our working directory to EA's folder.
cd "!currDir!Event Assembler"

echo ---------------------------
echo Assembling ROM. Please wait...
echo ---------------------------

rem Run Event Assembler on our copy of FE8 clean with our buildfile master.
Core A FE8 "-output:%OUTPUT%" "-input:%MASTER%"

rem Autogenerate a ups patch of our newly assembled ROM.
cd "!currDir!ups"
ups diff -b "%INPUT%" -m "%OUTPUT%" -o "%OUTPUT_UPS%"

if /I not [%1]==[noPause] (
	pause
)