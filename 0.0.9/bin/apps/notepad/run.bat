@echo off
cls
SetLocal EnableExtensions EnableDelayedExpansion
:opendoc
SetLocal enabledelayedexpansion
Set DirProg=%cd%\bin\

For /F "skip=4 tokens=1-3" %%a IN ('Dir "%DirProg%" /-C /S /A:-D') Do (
	If !flag!==1 Set dirsize=%%c
	If "%%b"=="ä ©«®¢:" (Set flag=1) Else (Set flag=0)
)
Set /a dirsizeT=dirsize+0
If Not "%dirsizeT%"=="%dirsize%" Echo —¨á«® %dirsize% á«¨èª®¬ ¢¥«¨ª® ¤«ï ®¡à ¡®âª¨ ¢ CMD&Pause>nul&Exit
Set kb=1024
Set /a mb=kb*kb, gb=kb*kb*kb, dirsizeKB=dirsize/kb, ostKB=dirsize%%kb*100/kb, dirsizeMB=dirsize/mb, ostMB=dirsize%%mb*100/mb
cls
echo.
echo. Enter file name to open his file:
echo.----------------
dir /b %1\*.ndt
echo.----------------
echo.
if "%dirsizeKB%" LEQ "35" ( echo. %dirsizeKB%,%ostKB%/40.00KB ) else (echo. %dirsizeKB%,%ostKB%/40.00KB Warrning!)
echo. close - close this app
echo. new - new file
echo.
set /p file=^>
if "%file%"=="close" ( exit /b )
if "%file%"=="new" ( if "%dirsizeKB%" LEQ "38" ( goto new) else ( echo ¥âã ¯ ¬ïâ¨! && pause && goto opendoc ) )
if not exist %1\%file%.ndt goto opendoc
goto type


:type
cls
type %1\%file%.ndt
echo.
echo.ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
echo. close - close this app
set /p newt=^>
if "%newt%"=="close" ( exit /b )
echo.%newt% >> %1\%file%.ndt
goto type



:new
cls
echo.
echo. Enter file name:
echo.
set /p newfile=^>
echo NotePad BatchOS create > %1\%newfile%.ndt
goto opendoc