::batch script by EZee_AP/hades

@ECHO off
SETLOCAL enableextensions enabledelayedexpansion

SET appid=440900

ECHO Workshop download script by EZee_AP/hades =)
ECHO.


CD %~dp0
IF EXIST steam/steamcmd.exe (
	IF EXIST ModIDs.txt (
		SET modids=ModIDs.txt
	) ELSE (
		ECHO [ERROR] could not locate ModIDs.txt
		ECHO.
		pause
		exit
	)  
) ELSE (
	ECHO [ERROR] could not locate steamcmd.exe
	ECHO.
	pause
	exit
)
 
SET "var="
FOR /F "tokens=*" %%A IN ('Type "%modids%"') DO (
	SET var=!var!+workshop_download_item %appid% %%A 
)

"steam/steamcmd.exe" +login anonymous %var% +exit

IF EXIST %~dp0Steam\steamapps\workshop\content\%appid% (
	ECHO yup
	%SystemRoot%\explorer.exe "%~dp0Steam\steamapps\workshop\content\%appid%"
) 