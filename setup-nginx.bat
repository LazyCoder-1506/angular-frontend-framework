@echo off
setlocal enabledelayedexpansion

REM Prompt user for Nginx installation path
set /p "nginxPath=Enter Nginx installation path: "

REM Check if the provided path exists
if not exist "%nginxPath%" (
    echo Invalid path. Nginx installation path does not exist.
    exit /b
)

REM Check if dist/angular-frontend-framework folder exists
if not exist "dist\angular-frontend-framework\" (
    echo Source folder not found: dist\angular-frontend-framework\
    exit /b
)

REM Copy contents to Nginx/html folder
xcopy /Y /S "dist\angular-frontend-framework\*" "%nginxPath%\html\"

echo Files copied successfully to %nginxPath%\html\
