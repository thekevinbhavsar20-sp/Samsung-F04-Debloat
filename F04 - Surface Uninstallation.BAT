@echo off
title Surface F04 Bloatware Uninstallation
setlocal enabledelayedexpansion
title Samsung Debloat - Tier 1: Surface

echo ============================================
echo   TIER 1: SURFACE DEBLOAT
echo ============================================
echo.
echo This will remove user-facing bloatware apps.
echo These are low risk and safe to remove for the current user.
echo.
echo Make sure:
echo   1. USB Debugging is enabled
echo   2. Device is connected and authorized
echo.
pause

echo.
echo Checking device connection...
adb devices
echo.
echo If no device is listed above, connect your phone and re-run this file.
pause

echo.
echo ---- Starting removal ----
echo.

call :remove "Print Spooler" com.android.printspooler
call :remove "SettingsBixby" com.samsung.android.app.settings.bixby
call :remove "Group Sharing" com.samsung.android.mobileservice
call :remove "Samsung Wallet" com.samsung.android.spaymini
call :remove "User guide" com.sec.android.widgetapp.webmanual
call :remove "Discover" com.samsung.discover.sep
call :remove "Android Auto" com.google.android.projection.gearhead
call :remove "My Galaxy" com.mygalaxy
call :remove "Game Optimizing Service" com.samsung.android.game.gos
call :remove "OneDrive" com.microsoft.skydrive
call :remove "Samsung account" com.osp.app.signin
call :remove "Private Compute Services" com.google.android.as.oss
call :remove "Radio (FM)" com.sec.android.app.fm
call :remove "Android Setup" com.google.android.setupwizard
call :remove "Recommended apps" com.samsung.android.app.omcagent

echo.
echo ============================================
echo   TIER 1 COMPLETE
echo ============================================
echo.
echo NOTE: "Game Optimizing Service" and "Radio (FM)" may
echo self-reinstall on next boot. This is expected behavior
echo for these two packages - don't worry if they come back.
echo Everything else should stay removed.
echo.
pause
exit /b 0

:remove
set "name=%~1"
set "pkg=%~2"
echo Removing %name% (%pkg%)...
adb shell pm uninstall --user 0 %pkg%
echo.
exit /b 0