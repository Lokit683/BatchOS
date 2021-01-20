@echo off
SetLocal EnableExtensions EnableDelayedExpansion
if "%*"=="/#" ( goto help)
if "%*"=="." ( goto air)
cls
echo.
echo. You console cleared!
echo.
exit /b

:air
cls
exit /b

:help
echo.
echo. clear . - clear console without text
echo.
exit /b