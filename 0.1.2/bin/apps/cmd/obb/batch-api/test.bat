@echo off
:start
cls
echo CD: %cd%
set dc=%cd%
set dc=%dc:batch-api=%
echo.DC: %dc%
pause
goto start