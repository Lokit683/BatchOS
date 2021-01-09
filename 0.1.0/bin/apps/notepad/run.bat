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
echo.
echo. close - close this app
echo. new - new file
echo. back - back to general 
echo. del - delete file
echo.
set /p file=^>
if "%file%"=="close" ( exit /b )
if "%file%"=="del" ( goto delete)
if "%file%"=="new" ( if "%dirsizeKB%" LEQ "38" ( echo ¥âã ¯ ¬ïâ¨! && pause && goto opendoc ) else ( goto new) )
if not exist %1\%file%.ndt goto opendoc
goto type

:delete
cls
echo.
echo. Enter file name to delete his file:
echo.----------------
dir /b %1\*.ndt
echo.----------------
echo.
if "%dirsizeKB%" LEQ "35" ( echo. %dirsizeKB%,%ostKB%/40.00KB ) else (echo. %dirsizeKB%,%ostKB%/40.00KB Warrning!)
echo.
echo. close - close this app
echo. back - back to general 
echo.
set /p file=^>
if "%file%"=="back" ( goto opendoc)
if "%file%"=="close" ( exit /b )
echo.
cls
echo.
if not exist %1\%file%.ndt echo ” ©«  ­¥ áãè¥¢áâ¢ã¥â && pause && goto delte 
del %1\%file%.ndt
echo.
echo. You delete text file %file%!
echo.
ping 127.0.0.1 -n 4 > nul
goto delete

:type
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
type %1\%file%.ndt
echo.
echo.ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
if "%dirsizeKB%" LEQ "35" ( echo. %dirsizeKB%,%ostKB%/40.00KB ) else (echo. %dirsizeKB%,%ostKB%/40.00KB Warrning!)
echo.
echo. close - close this app
echo. back - back to general
set /p newt=^>
if "%newt%"=="close" ( exit /b )
if "%newt%"=="back" ( goto opendoc)
:: if "%dirsizeKB%" GEQ "38" ( echo ¥¤®áâ â®ç­® ¬¥áâ  çâ®¡ë à¥¤ ªâ¨à®¢ âì ä ©«.&& pause && goto type )
echo.%newt% >> %1\%file%.ndt
goto type



:new
cls
echo.
echo. Enter file name:
echo.
set /p newfile=^>
echo NotePad BatchOS create > %1\%newfile%.ndt
echo.  > %1\%newfile%.ndt
set file=%newfile%
goto opendoc