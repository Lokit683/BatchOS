:: �� ��栫쭮� �ਫ������ �� BatchOS
:: 
::

@echo off
title Calc by BatchOS
:Start
cls
echo.
echo ������ �ਬ��:
echo.
echo. close - ��-�� ������� �ਫ������
echo.
set /p calc=^>
if "%calc%"=="close" ( exit /b)
echo.
cls
set /a db=%calc%
echo.
echo. �������: "%db%"
echo.
Echo. �⮡ �த������ ������ �� ���� �������
pause > nul
goto Start