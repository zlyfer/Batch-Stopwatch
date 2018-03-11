@echo off
setlocal enabledelayedexpansion
mode con cols=70 lines=30
md Stopwatch.data 2>nul
cd Stopwatch.data
title Stopwatch
:restart
set stime=%time%
set start=0
set end=0
:prepreloop
title Stopwatch - Waiting
ping -n 2 localhost >nul
if not exist 3.dat goto prepreloop
:preloop
call :check
if %start%==1 goto loop
goto preloop
:loop
echo %time%
call :check
if %end%==1 (
set etime=%time%
goto end
)
title Stopwatch - Running
goto loop
:end
cls
echo Start: %stime%
echo End:   %etime%
:midloop
title Stopwatch - Stopped, Waiting
if exist 3.dat goto midloop
goto restart
:check
(
set /p start=
set /p end=
)<3.dat 2>nul