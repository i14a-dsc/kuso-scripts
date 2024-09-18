@echo off
setlocal
pushd %~dp0
echo I14A CommandLine Tools v1.2&echo %0 - since v1.0&echo.
if "%~1"=="" (echo [Err] Subcommand 1 is null. Please input file name. & exit /b)
if "%~2"=="" (echo [Err] Subcommand 2 is null. Please input file type. & echo bat, js, ts, sh & exit /b)
if exist "%~1.bat" (echo [Err] File exists.&exit /b)

if "%~2"=="bat" (
  cp default %1.bat
  nano %1.bat
)
if "%~2"=="js" (
  echo @setlocal^&@node "%cd%\%~1.js"^&@endlocal > "%~1.bat"
  cp default.js "%~1.js"
  nano "%~1.js"
)

endlocal
