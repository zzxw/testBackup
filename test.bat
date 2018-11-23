@echo off
set val = test
echo %val%
if %val% == 'test' (echo 1)
for /F %%i in ('git branch') do (		
	echo %%i
	if %%i equ "*"(echo Hello)
)