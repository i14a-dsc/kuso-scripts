@echo off
setlocal
pushd %~dp0
ls -b | findstr .bat | sed s/.bat//g
endlocal
