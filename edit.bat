@echo off
setlocal
pushd %~dp0
echo I14A CommandLine Tools v1.2&echo %0 - since v1.0&echo.&if "%~1"=="" (echo [Err] No command provided. & exit /b)
if not exist "C:\Data\cmd\%1.bat" (echo [Err] File dosen't exists.&exit /b)
if exist "%~1.js" (nano "%~1.js" & goto eof)
if exist "%~1.ts" (nano "%~1.ts" & goto eof)
if exist "%~1.sh" (nano "%~1.sh" & goto eof)
nano "%~1.bat"

:eof
endlocal
