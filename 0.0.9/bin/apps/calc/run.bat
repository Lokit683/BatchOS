:: Это офицальное приложение от BatchOS
:: 
::

@echo off
title Calc by BatchOS
:Start
cls
echo.
echo Введите пример:
echo.
echo. close - что-бы закрыть приложение
echo.
set /p calc=^>
if "%calc%"=="close" ( exit /b)
echo.
cls
set /a db=%calc%
echo.
echo. Результат: "%db%"
echo.
Echo. Чтоб продолжить нажмите на любую клавищу
pause > nul
goto Start