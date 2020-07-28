@echo off
echo Script started...

set package_dir=%1
set log=%2

echo Path provided [%package_dir%]

if exist %package_dir%\nul goto checkIfLog
if not exist %package_dir%\nul goto doesNotExist

:doesNotExist
echo Path provided does not exist on this machine.
goto exit

:checkIfLog
if "%log%" == "1" (goto logCommands) else (goto executeCommands)

:executeCommands
for /D %%a in ("%package_dir%\*") do (
 ping 172.0.1.2 -n 1 -w 1500 > nul
 echo [Executing] mklink /D %%~nxa %%~a
 mklink /D %%~nxa %%~a
)
goto exit

:logCommands
echo Generating "mklink" commands
for /D %%a in ("%package_dir%\*") do (
 echo mklink /D %%~nxa %%~a >> mklinkCommands.txt
)
echo Completed.
goto exit

:exit
echo Exiting script...
ping 172.0.1.2 -n 1 -w 1500 > nul
echo Bye! :)
pause
