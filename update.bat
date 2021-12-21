@echo off
set pth=D:\Coding\Test\test
if %pth% EQU %cd% (
echo checking for updates on github...
call git pull origin --verbose
echo up to date...
timeout 2 >nul
start cmd /k "launch.bat"
) else (
echo incorrect path
pause >nul
)
