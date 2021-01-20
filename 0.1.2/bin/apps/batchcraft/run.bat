@echo off
setlocal enabledelayedexpansion
set stat0=0
:emptylevel
for /l %%g in (0,1,639) do set b%%g= 
set loc_y=7
set loc_x=19
set /a ptr_l=%loc_y%*40+%loc_x%
set b%ptr_l%=X
set face=3
:render
title BatchCraft
cls
echo ษออออออออออออออออออออออออออออออออออออออออป
echo บ%b0%%b1%%b2%%b3%%b4%%b5%%b6%%b7%%b8%%b9%%b10%%b11%%b12%%b13%%b14%%b15%%b16%%b17%%b18%%b19%%b20%%b21%%b22%%b23%%b24%%b25%%b26%%b27%%b28%%b29%%b30%%b31%%b32%%b33%%b34%%b35%%b36%%b37%%b38%%b39%บ
for /l %%f in (4,4,63) do (
	set pob=%%f
	set /a poc=%%f+1
	set /a pod=%%f+2
	set /a poe=%%f+3
	for /f "tokens=1,2,3,4" %%g in ("!pob! !poc! !pod! !poe!") do echo บ!b%%g0!!b%%g1!!b%%g2!!b%%g3!!b%%g4!!b%%g5!!b%%g6!!b%%g7!!b%%g8!!b%%g9!!b%%h0!!b%%h1!!b%%h2!!b%%h3!!b%%h4!!b%%h5!!b%%h6!!b%%h7!!b%%h8!!b%%h9!!b%%i0!!b%%i1!!b%%i2!!b%%i3!!b%%i4!!b%%i5!!b%%i6!!b%%i7!!b%%i8!!b%%i9!!b%%j0!!b%%j1!!b%%j2!!b%%j3!!b%%j4!!b%%j5!!b%%j6!!b%%j7!!b%%j8!!b%%j9!บ
	)


echo ศออออออออออออออออออออออออออออออออออออออออผ
:controls
if %stat0%==0 set stat0text=False
if %stat0%==1 set stat0text=True
if %face%==0 set facetext=South
if %face%==1 set facetext=West
if %face%==2 set facetext=North
if %face%==3 set facetext=East
echo X=%loc_x%  Y=%loc_y%  Pos=%ptr_l%  Facing: %facetext%
echo a - Left   d - Right    j - Break Block
echo w - Up     s - Down     k - Place Block
echo n - Restart level       l - Turn before moving - %stat0text%
choice /c adwsjknl >nul
:lwjgl0
if %errorlevel% GTR 4 goto lwjgl1
set facelast==%face%
if %errorlevel%==1 set face=1
if %errorlevel%==2 set face=3
if %errorlevel%==3 set face=2
if %errorlevel%==4 set face=0
if %stat0%==1 if %facelast% NEQ %face% goto render
set action=move
goto move
:lwjgl1
if %errorlevel%==5 set action=blockbreak
if %errorlevel%==6 set action=blockplace
if %errorlevel%==7 exit /b
if %errorlevel%==8 goto togglemove
goto interact
:togglemove
if %stat0%==0 (
	set stat0=1
	goto render)
	if %stat0%==1 (
	set stat0=0
	goto render)
:interact
set ptr_last=%ptr_l%
set loc_ym=%loc_y%
set loc_xm=%loc_x%
if %face%==0 set /a loc_ym+=1
if %face%==1 set /a loc_xm-=1
if %face%==2 set /a loc_ym-=1
if %face%==3 set /a loc_xm+=1
if %loc_ym% GTR 15 goto render
if %loc_ym% LSS 0 goto render
if %loc_xm% GTR 19 goto render
if %loc_xm% LSS 0 goto render
set /a ptr_m=%loc_ym%*40+%loc_xm%
if %action%==blockbreak set b%ptr_m%= 
if %action%==blockplace set b%ptr_m%=#
goto render
set loc_ym=%loc_y%
set loc_xm=%loc_x%
set /a ptr_l=%loc_y%*40+%loc_x%
if %face%==0 set /a loc_y-=1
if %face%==1 set /a loc_x+=1
if %face%==2 set /a loc_y+=1
if %face%==3 set /a loc_x-=1
pause
echo off
goto render
:move
set ptr_last=%ptr_l%
set loc_ym=%loc_y%
set loc_xm=%loc_x%
if %face%==0 set /a loc_ym+=1
if %face%==1 set /a loc_xm-=1
if %face%==2 set /a loc_ym-=1
if %face%==3 set /a loc_xm+=1
set /a ptr_m=%loc_ym%*40+%loc_xm%

if "!b%ptr_m%!"=="#" goto render
if %loc_ym% GTR 15 goto render
if %loc_ym% LSS 0 goto render
if %loc_xm% GTR 39 goto render
if %loc_xm% LSS 0 goto render
:legalmove
set loc_y=%loc_ym%
set loc_x=%loc_xm%
set /a ptr_l=%loc_y%*40+%loc_x%
set b%ptr_l%=X
set b%ptr_last%= 
goto render