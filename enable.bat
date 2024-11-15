NET SESSION >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process cmd -ArgumentList '/c, \"%~0\"' -Verb RunAs"
    exit /b
)

set "SCRIPT_PATH=%~dp0..\enable-veyon.ps1"
powershell -ExecutionPolicy Bypass -File "%SCRIPT_PATH%"
