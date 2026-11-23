@echo off
cd /d "%~dp0"
start "AstroGuard local server" cmd /k python -m http.server 8000
timeout /t 2 >nul
start http://localhost:8000
