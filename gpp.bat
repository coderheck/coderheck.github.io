@echo off
set ext=.cpp
if %1.==. goto end
goto compile

:compile
g++ -std=c++20 -o %1 %1%ext% && %1

:end
echo:
