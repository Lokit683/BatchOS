@echo off
SetLocal EnableExtensions EnableDelayedExpansion
if "%*"=="/#" ( goto help)
if "%*"=="." ( goto air)
if "%*"=="" ( echo. && echo Enter say / # to learn more about the command. && echo. && exit /b)
echo.%*
exit /b

:air
echo.
exit /b

:help
echo.
echo. say . - Empty message
echo.
echo.^| say {You text}
echo.^| say Hello, world! 
echo.
exit /b