@echo off
title Starting Chat Application

echo Starting MongoDB server...
start "" "C:\Program Files\MongoDB\Server\8.2\bin\mongod.exe"

timeout /t 5 >nul

echo Starting Backend Server...
start "" cmd /k "cd /d %~dp0server && yarn start"

echo Starting Frontend Client...
start "" cmd /k "cd /d %~dp0public && yarn start"

echo All servers are launching...
pause