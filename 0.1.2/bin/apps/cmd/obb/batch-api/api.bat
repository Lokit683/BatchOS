@echo off
SetLocal EnableExtensions EnableDelayedExpansion
if "%*"=="/#" ( goto help)
if "%*"=="libraries" ( goto liber)

if "%1"=="use" ( goto use)
if "%1"=="set" ( goto apset)

if "%*"=="" ( echo. && echo Enter api /# to learn more about the command. && echo. && exit /b)
exit /b

:use
echo.
set /p api=<%cd%\bin\apps\cmd\api.config
echo.You used api: %api%
echo.
exit /b

:apset
if "%2"=="" ( echo. && echo. Libes not exist.. && echo. && exit /b)
if exist %cd%\bin\apps\cmd\obb\%2 goto cop
echo. 123
exit /b


:help
echo.
echo. api libraries - show all libraries
echo.
echo.^| api set {Library name}
echo.^| api use - the library you are using
echo.
exit /b


:liber
echo.
echo.All libraries
echo.---------------------
echo.
dir /b "%cd%\bin\apps\cmd\obb\"
echo.
echo.---------------------
echo.
exit /b


:cop
echo %2> %cd%\bin\apps\cmd\api.config
set /p api=<%cd%\bin\apps\cmd\api.config
echo You set api used: %api%
exit /b