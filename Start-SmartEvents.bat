@echo off
setlocal
cd /d "%~dp0"
set "URL=http://127.0.0.1:8000/SmartEvents-Studio.html"
where py >nul 2>&1
if not errorlevel 1 goto use_py
where python >nul 2>&1
if not errorlevel 1 goto use_python
where node >nul 2>&1
if not errorlevel 1 goto use_node
echo SmartEvents needs Python or Node.js to run its 3D browser modules.
echo Install Python from https://www.python.org/downloads/ or Node.js from https://nodejs.org/
pause
exit /b 1
:use_py
start "SmartEvents Server" /min cmd /c "py -m http.server 8000 --bind 127.0.0.1"
goto open_browser
:use_python
start "SmartEvents Server" /min cmd /c "python -m http.server 8000 --bind 127.0.0.1"
goto open_browser
:use_node
start "SmartEvents Server" /min cmd /c "node server.js"
goto open_browser
:open_browser
timeout /t 2 /nobreak >nul
start "" "%URL%"
echo.
echo SmartEvents is running at %URL%
echo Keep the server window open while using the app.
echo Close the server window when finished.
endlocal
