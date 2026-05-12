:: Mr.CodeHacker - Windows Installer Launcher
:: Platform: Windows 10 / 11

@ECHO OFF
TITLE Mr.CodeHacker Installer
COLOR 0A

ECHO.
ECHO  ==========================================
ECHO   MR.CODEHACKER - WINDOWS INSTALLER
ECHO  ==========================================
ECHO.

:: Run PowerShell installer with elevated bypass
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0Win_File\Install.ps1"

ECHO.
PAUSE
EXIT