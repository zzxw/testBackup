@echo off
set val=test
echo %val%
if "%val%"=="test" ( echo Test)
if NOT "%val%"=="te\t" ( echo tt)