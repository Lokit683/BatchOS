@echo off
:opencmd
cls
title BatchOS Cmd
SetLocal EnableExtensions EnableDelayedExpansion
echo.旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo.쿍atchOS Cmd version [0.0.1]              �
echo.�                                         �
echo.쿬lose - close cmd                        �
echo.읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo/
:cmd
set cmd=
set /p cmd=C:\users\apps\$%~1^>
if "%cmd%"=="" (goto cmd )
if "%cmd%"=="close" ( exit /b)
call bin\apps\cmd\obb\%cmd%
goto cmd
