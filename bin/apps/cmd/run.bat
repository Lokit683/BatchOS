@echo off
:opencmd
cls
title BatchOS Cmd
SetLocal EnableExtensions EnableDelayedExpansion
echo.�����������������������������������������Ŀ
echo.�BatchOS Cmd version [0.0.1]              �
echo.�                                         �
echo.�close - close cmd                        �
echo.�������������������������������������������
echo/
:cmd
set cmd=
set /p cmd=C:\users\apps\$%~1^>
if "%cmd%"=="" (goto cmd )
if "%cmd%"=="close" ( exit /b)
call bin\apps\cmd\obb\%cmd%
goto cmd
