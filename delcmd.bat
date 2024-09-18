@echo off
setlocal enabledelayedexpansion
pushd %~dp0
echo I14A CommandLine Tools v1.2&echo %0 - since v1.0&echo.&if "%~1"=="" (echo [Err] No command provided. & exit /b)
if not exist "%~1.bat" (echo [Err] File dosen't exists.&exit /b)

echo Input: %~1
set /P confirm="Ok to delete "%1"? (y/N): "

for /f "tokens=*" %%a in ("%confirm%") do (
  if /i "%%a" == "y" (
    echo Deleting %1...
    del /q /f "%~1.bat"
    if exist "%~1.js" (del /q /f "%~1.js")
    if exist "%~1.ts" (del /q /f "%~1.ts")
    if exist "%~1.sh" (del /q /f "%~1.sh")
    goto :eof
  )
  if /i "%%a" == "n" (
    echo Canceled.
    goto :eof
  )
)

echo Invalid input. Please enter 'y' or 'n'.
endlocal
