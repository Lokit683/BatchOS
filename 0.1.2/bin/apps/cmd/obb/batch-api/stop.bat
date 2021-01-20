@echo off
SetLocal EnableExtensions EnableDelayedExpansion
if "%*"=="/#" ( goto help)
if "%*"=="." ( goto air)
echo.
echo. The code is stopped to continue press any button.
echo.
pause > nul
exit /b

:air
pause > nul
exit /b

:help
echo.
echo.^| stop
echo.^| stop .  
echo.
exit /b