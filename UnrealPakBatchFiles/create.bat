::batch script by EZee_AP/hades

@ECHO off

CD %~dp0
IF EXIST UnrealPak.exe (
	IF EXIST "%~1" (
		SET file="%~1"
	) ELSE (
		ECHO [ERROR] drop folder onto batch script
		ECHO.
		pause
		exit
	)  
) ELSE (
	ECHO [ERROR] could not locate UnrealPak.exe
	ECHO.
	pause
	exit
)

SET fileAttribute=%~a1
IF "%fileAttribute:~0,1%"=="d" (
	SET file=%~1

	UnrealPak.exe "%file%.pak" -create="%file%"

) ELSE (
	ECHO [ERROR] drop folder onto batch script
	ECHO.
)
pause