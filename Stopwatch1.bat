@echo off
setlocal enabledelayedexpansion
mode con cols=70 lines=30
start Stopwatch2.bat
md Stopwatch.data 2>nul
cd Stopwatch.data
title Stopwatch
:loop
echo Press any key to start..
pause >nul
echo ^1>3.dat 2>nul
echo Press any key to stop..
pause >nul
echo ^1>>3.dat 2>nul
echo Press any key to restart..
pause >nul
del 3.dat 2>nul
cls
goto loop