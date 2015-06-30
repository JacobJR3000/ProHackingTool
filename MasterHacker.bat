@echo off

color 0a

set nerd=0

set vary=8000
set loop=0
CHOICE /c yn /m "Hack The System"

IF ERRORLEVEL 2 GOTO END

IF ERRORLEVEL 1 GOTO START

:Start
set /a HACK=%random% %%2 +1

IF %HACK%==1 <nul set /p dummy="0" 

IF %HACK%==2 <nul set /p dummy="1" 

set /a nerd=nerd+1

IF %nerd%==%vary% goto hack

goto start

:hack

echo.

echo.

echo.

timeout /t 1 /nobreak > NUL
echo EXECUTING HACK.EXE 
timeout /t 2 /nobreak > NUL
echo %random%
timeout /t 1 /nobreak > NUL
echo %random% 
echo %random% %random% %random% %random%
echo %random% %random% %random% %random%
echo %random% %random%
echo %random% %random% %random% %random% %random% %random%
timeout /t 1 /nobreak > NUL
echo %random% 
echo HACK IN PROGRESS
set /a loop=loop+1
echo NUMBER OF SYSTEMS HACKED:
echo %loop%
<nul set /p dummy2="." 

timeout /t 1 /nobreak > NUL
<nul set /p dummy2="."
timeout /t 1 /nobreak > NUL
<nul set /p dummy2="." 

echo.
echo RESUMING HACKING
timeout /t 1 /nobreak > NUL
echo.

timeout /t 1 /nobreak > NUL

echo.

set nerd=0

set /a vary=%random% %% 2000 +1
set /a vary=vary+8000
echo %vary%
goto start
:end

echo Fuckin' Nerd

Pause
