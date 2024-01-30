@ECHO OFF & SETLOCAL EnableDelayedExpansion
TITLE WinPEAS - Windows local Privilege Escalation Awesome Script
COLOR 0F
CALL :SetOnce

REM :: WinPEAS - Windows local Privilege Escalation Awesome Script
REM :: Code by carlospolop; Re-Write by ThisLimn0

REM Registry scan of other drives besides 
REM /////true or false
SET long=false

REM Check if the current path contains spaces
SET "CurrentFolder=%~dp0"
IF "!CurrentFolder!" NEQ "!CurrentFolder: =!" (
    ECHO winPEAS.bat cannot run if the current path contains spaces.
	ECHO Exiting.
    EXIT /B 1
)

:Splash
ECHO.

CALL :ColorLine  %E%32m"  _____       _               _____ _                       
CALL :ColorLine  %E%32m" /  __ \     | |             /  ___| |                      
CALL :ColorLine  %E%32m" | /  \/_   _| |__   ___ _ __\ `--.| | __ _ _   _  ___ _ __ 
CALL :ColorLine  %E%32m" | |   | | | | '_ \ / _ \ '__|`--. \ |/ _` | | | |/ _ \ '__|
CALL :ColorLine  %E%32m" | \__/\ |_| | |_) |  __/ |  /\__/ / | (_| | |_| |  __/ |   
CALL :ColorLine  %E%32m"  \____/\__, |_.__/ \___|_|  \____/|_|\__,_|\__, |\___|_|   
CALL :ColorLine  %E%32m"         __/ |                               __/ |          
CALL :ColorLine  %E%32m"        |___/                               |___/           
ECHO.                       by carlospolop
ECHO.
ECHO.