@echo off
:opencmd
cls
title BatchOS Cmd
SetLocal EnableExtensions EnableDelayedExpansion
echo.ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo.³BatchOS Cmd version [0.0.1]              ³
echo.³                                         ³
echo.³close - close cmd                        ³
echo.ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo.
:cmd
set /p api=<%cd%\bin\apps\cmd\api.config
set cmd=
set /p cmd=C:\users\apps\$%~1^>
set cmd=%cmd:/?=%
if "%cmd%"=="" (goto cmd )
if "%cmd%"=="close" ( exit /b)
call bin\apps\cmd\obb\%api%\%cmd%
goto cmd
