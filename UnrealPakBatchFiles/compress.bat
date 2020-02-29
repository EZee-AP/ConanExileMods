::batch script by EZee_AP/hades

@ECHO off

CD %~dp0
IF EXIST UnrealPak.exe (
	IF EXIST "%~1" (
		SET file="%~1"
	) ELSE (
		ECHO [ERROR] drop .pak file onto batch script
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
	ECHO [ERROR] drop .pak file onto batch script
	ECHO.	
	pause
	exit
)

SET file=%~1
FOR %%A IN ("%file%") DO (
	SET modFolder=%%~nA
	SET modExtension=%%~xA
)

IF %modExtension% == .pak (
	ECHO Please wait while pak file is extracted...
	ECHO.
	IF EXIST %modFolder% (
		@RD /S /Q %modFolder%
	)
	
	UnrealPak.exe "%file%" -extract "%modFolder%"
	
	ECHO.
	ECHO Please wait while pak file is compresses, this may take some time...
	ECHO.
	COPY /B "%file%" "%file%.bak" >NUL
	UnrealPak.exe "%file%" -create="%modFolder%" -compress
	
	IF EXIST %modFolder% (
		@RD /S /Q %modFolder%
	)
	
	ECHO.
	ECHO cleaning up...
	ECHO done...
	ECHO.
) ELSE (
	ECHO [ERROR] only supports .pak files
	ECHO.
)
pause