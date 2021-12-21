@echo off
echo Processors: %NUMBER_OF_PROCESSORS%
echo Architecture: %PROCESSOR_ARCHITECTURE%
echo Level: %PROCESSOR_LEVEL%
echo Revision: %PROCESSOR_REVISION%
echo %COMPUTERNAME%
echo %USERNAME%
echo OS: %OS%
echo CMD V: %CMDEXTVERSION%
echo Date, Time: %DATE%, %TIME%
echo Dir: %cd%

timeout 3 >null
del null

echo:
echo:
echo Node Version:
node --version
echo:
echo NPM:
call npm version
echo:
echo:

timeout 2 >null
del null

echo launching...
start cmd /k "node test.js && echo [press any key to exit] && pause >null && del null & exit"
exit
