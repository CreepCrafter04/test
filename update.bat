@echo off
set pth=D:\Coding\Test\test
if %pth% EQU %cd% (
echo updating...
call git pull origin --verbose
echo up to date...
timeout 2 >nul
start cmd 
) else (
echo incorrect path
pause >nul
)
