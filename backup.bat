@echo off
cd %1
git add .
git commit -m "daily Backup"
git config --global push.default simple
git push 
for /F %%i in ('git branch') do (
	if NOT "%%i"=="*" (
		git add .
		git commit -m "daily Backup"
		git config --global push.default simple
		git push origin %%i:%%i
	)
)