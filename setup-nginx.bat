@echo off
setlocal enabledelayedexpansion

REM Get the root folder name
for %%I in ("%CD%") do set "rootFolder=%%~nxI"

REM Prompt user for Nginx installation path
set /p "nginxPath=Enter Nginx installation path (or press Enter for default path C:\nginx-1.25.2): "

REM Set default path if user input is empty
if "!nginxPath!"=="" (
    set "nginxPath=C:\nginx-1.25.2"
)

REM Check if the provided path exists
if not exist "!nginxPath!" (
    echo Invalid path. Nginx installation path does not exist.
    exit /b
)

REM Check if folder exists
if not exist "dist\!rootFolder!\" (
    echo Source folder not found: dist\!rootFolder!\
    exit /b
)

REM Copy contents to Nginx/html folder
xcopy /Y /S "dist\!rootFolder!\*" "!nginxPath!\html\"

echo Files copied successfully to !nginxPath!\html\
