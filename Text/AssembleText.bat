
@echo off

echo: | ("text-process-classic.exe" "TextBuildfile.event" --parser-exe "ParseFile.exe")

if /I not [%1]==[noPause] (
	pause
)
