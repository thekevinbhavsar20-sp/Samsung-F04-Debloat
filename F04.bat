@echo off
setlocal enabledelayedexpansion
title F04 - Debloat Tool by K.S.
color 0A

:: ============================================================
::  Samsung Galaxy F04 Debloat Tool
::  Uses: adb shell pm uninstall -k --user 0 <package>
::  Removes the app for the CURRENT user (user 0) only.
::  System partition is untouched - restore via factory reset.
:: ============================================================

adb get-state >nul 2>&1
if errorlevel 1 (
    echo.
    echo [ERROR] No device detected, or ADB is not installed / not in PATH.
    echo Make sure USB debugging is enabled and the device is connected.
    echo.
    pause
    exit /b
)

:menu
cls
echo ================================================================
echo   SAMSUNG GALAXY F04 - DEBLOAT TOOL
echo ================================================================
echo   1. Surface       (very light strip - surface level apps only)
echo   2. Raw Android    (aggressive strip - power users)
echo   3. Minimal        (Raw Android list + Minimal Features)
echo   4. Exit
echo ================================================================
set /p choice="Select an option (1-4): "

if "%choice%"=="1" goto surface
if "%choice%"=="2" goto raw
if "%choice%"=="3" goto minimal
if "%choice%"=="4" exit /b
goto menu

:surface
cls
title Debloat in Process
echo Applying SURFACE profile...
echo ----------------------------------------------------------------

echo Application recommendations
adb shell pm uninstall -k --user 0 com.samsung.android.mapsagent

echo Discover
adb shell pm uninstall -k --user 0 com.samsung.discover

echo Samsung Checkout
adb shell pm uninstall -k --user 0 com.sec.android.app.billing

echo Samsung Cloud
adb shell pm uninstall -k --user 0 com.samsung.android.scloud

echo Smart Switch
adb shell pm uninstall -k --user 0 com.sec.android.easyMover

echo ----------------------------------------------------------------
echo SURFACE profile complete.
goto done

:raw
cls
title Debloat in Process
echo Applying RAW ANDROID profile...
echo ----------------------------------------------------------------

echo Application recommendations
adb shell pm uninstall -k --user 0 com.samsung.android.mapsagent

echo Discover
adb shell pm uninstall -k --user 0 com.samsung.discover

echo Samsung Checkout
adb shell pm uninstall -k --user 0 com.sec.android.app.billing

echo Smart Switch
adb shell pm uninstall -k --user 0 com.sec.android.easyMover

echo Ad Privacy
adb shell pm uninstall -k --user 0 com.google.android.adservices.api

echo Android Switch
adb shell pm uninstall -k --user 0 com.google.android.apps.restore

echo AppCloud
adb shell pm uninstall -k --user 0 com.aura.oobe.samsung

echo App Update
adb shell pm uninstall -k --user 0 com.samsung.android.app.updatecenter

echo Config Updater
adb shell pm uninstall -k --user 0 com.google.android.configupdater

echo Find My Mobile
adb shell pm uninstall -k --user 0 com.samsung.android.fmm

echo Galaxy Service Setup
adb shell pm uninstall -k --user 0 com.samsung.android.dbsc

echo Google
adb shell pm uninstall -k --user 0 com.google.android.googlequicksearchbox

echo Meet
adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon

echo Messages (Samsung)
adb shell pm uninstall -k --user 0 com.samsung.android.messaging

echo Meta App Installer
adb shell pm uninstall -k --user 0 com.facebook.system

echo Meta App Manager
adb shell pm uninstall -k --user 0 com.facebook.appmanager

echo Parental Control
adb shell pm uninstall -k --user 0 com.samsung.android.app.parentalcare

echo Photo Screensaver
adb shell pm uninstall -k --user 0 com.android.dreams.phototable

echo Samsung Account
adb shell pm uninstall -k --user 0 com.osp.app.signin

echo Samsung Cloud Service
adb shell pm uninstall -k --user 0 com.samsung.android.scloud

echo Samsung Core Service
adb shell pm uninstall -k --user 0 com.samsung.android.scs

echo Samsung Keyboard
adb shell pm uninstall -k --user 0 com.samsung.android.honeyboard

echo Samsung Kids Installer
adb shell pm uninstall -k --user 0 com.samsung.android.kidsinstaller

echo Samsung Push Service
adb shell pm uninstall -k --user 0 com.sec.spp.push

echo Smart Switch Agent
adb shell pm uninstall -k --user 0 com.sec.android.easyMover.Agent

echo Sticker Centre
adb shell pm uninstall -k --user 0 com.samsung.android.stickercenter

echo Ultra Data Saving Mode
adb shell pm uninstall -k --user 0 com.samsung.android.uds

echo Wearable Manager Installer
adb shell pm uninstall -k --user 0 com.samsung.android.app.watchmanagerstub

echo Weather
adb shell pm uninstall -k --user 0 com.sec.android.daemonapp

echo Work Setup
adb shell pm uninstall -k --user 0 com.android.managedprovisioning

echo Config APK
adb shell pm uninstall -k --user 0 android.autoinstalls.config.samsung

echo Config Message (Samsung)
adb shell pm uninstall -k --user 0 com.wsomacp

echo Config Update (CID Manager)
adb shell pm uninstall -k --user 0 com.samsung.android.cidmanager

echo Config Update (SDM)
adb shell pm uninstall -k --user 0 com.samsung.android.sdm.config

echo Galaxy Store
adb shell pm uninstall -k --user 0 com.sec.android.app.samsungapps

echo Galaxy Themes
adb shell pm uninstall -k --user 0 com.samsung.android.themestore

echo Galaxy Themes Service
adb shell pm uninstall -k --user 0 com.samsung.android.themecenter

echo Reminder
adb shell pm uninstall -k --user 0 com.samsung.android.app.reminder

echo Samsung Intelligence Service
adb shell pm uninstall -k --user 0 com.samsung.android.intellivoiceservice

echo ----------------------------------------------------------------
echo RAW ANDROID profile complete.
goto done

:minimal
cls
title Debloat in Process
echo Applying MINIMAL profile...
echo ----------------------------------------------------------------

echo Application recommendations
adb shell pm uninstall -k --user 0 com.samsung.android.mapsagent

echo Discover
adb shell pm uninstall -k --user 0 com.samsung.discover

echo Samsung Checkout
adb shell pm uninstall -k --user 0 com.sec.android.app.billing

echo Smart Switch
adb shell pm uninstall -k --user 0 com.sec.android.easyMover

echo Ad Privacy
adb shell pm uninstall -k --user 0 com.google.android.adservices.api

echo Android Switch
adb shell pm uninstall -k --user 0 com.google.android.apps.restore

echo AppCloud
adb shell pm uninstall -k --user 0 com.aura.oobe.samsung

echo App Update
adb shell pm uninstall -k --user 0 com.samsung.android.app.updatecenter

echo Config Updater
adb shell pm uninstall -k --user 0 com.google.android.configupdater

echo Find My Mobile
adb shell pm uninstall -k --user 0 com.samsung.android.fmm

echo Galaxy Service Setup
adb shell pm uninstall -k --user 0 com.samsung.android.dbsc

echo Google
adb shell pm uninstall -k --user 0 com.google.android.googlequicksearchbox

echo Meet
adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon

echo Messages (Samsung)
adb shell pm uninstall -k --user 0 com.samsung.android.messaging

echo Meta App Installer
adb shell pm uninstall -k --user 0 com.facebook.system

echo Meta App Manager
adb shell pm uninstall -k --user 0 com.facebook.appmanager

echo Parental Control
adb shell pm uninstall -k --user 0 com.samsung.android.app.parentalcare

echo Photo Screensaver
adb shell pm uninstall -k --user 0 com.android.dreams.phototable

echo Samsung Account
adb shell pm uninstall -k --user 0 com.osp.app.signin

echo Samsung Cloud Service
adb shell pm uninstall -k --user 0 com.samsung.android.scloud

echo Samsung Core Service
adb shell pm uninstall -k --user 0 com.samsung.android.scs

echo Samsung Keyboard
adb shell pm uninstall -k --user 0 com.samsung.android.honeyboard

echo Samsung Kids Installer
adb shell pm uninstall -k --user 0 com.samsung.android.kidsinstaller

echo Samsung Push Service
adb shell pm uninstall -k --user 0 com.sec.spp.push

echo Smart Switch Agent
adb shell pm uninstall -k --user 0 com.sec.android.easyMover.Agent

echo Sticker Centre
adb shell pm uninstall -k --user 0 com.samsung.android.stickercenter

echo Ultra Data Saving Mode
adb shell pm uninstall -k --user 0 com.samsung.android.uds

echo Wearable Manager Installer
adb shell pm uninstall -k --user 0 com.samsung.android.app.watchmanagerstub

echo Weather
adb shell pm uninstall -k --user 0 com.sec.android.daemonapp

echo Work Setup
adb shell pm uninstall -k --user 0 com.android.managedprovisioning

echo Config APK
adb shell pm uninstall -k --user 0 android.autoinstalls.config.samsung

echo Config Message (Samsung)
adb shell pm uninstall -k --user 0 com.wsomacp

echo Config Update (CID Manager)
adb shell pm uninstall -k --user 0 com.samsung.android.cidmanager

echo Config Update (SDM)
adb shell pm uninstall -k --user 0 com.samsung.android.sdm.config

echo Galaxy Store
adb shell pm uninstall -k --user 0 com.sec.android.app.samsungapps

echo Galaxy Themes
adb shell pm uninstall -k --user 0 com.samsung.android.themestore

echo Galaxy Themes Service
adb shell pm uninstall -k --user 0 com.samsung.android.themecenter

echo Reminder
adb shell pm uninstall -k --user 0 com.samsung.android.app.reminder

echo Samsung Intelligence Service
adb shell pm uninstall -k --user 0 com.samsung.android.intellivoiceservice

echo Calendar
adb shell pm uninstall -k --user 0 com.samsung.android.calendar

echo Calendar Storage
adb shell pm uninstall -k --user 0 com.android.providers.calendar

echo Chrome
adb shell pm uninstall -k --user 0 com.android.chrome

echo Default Print Service
adb shell pm uninstall -k --user 0 com.android.bips

echo Dual Messenger
adb shell pm uninstall -k --user 0 com.samsung.android.da.daagent

echo Galaxy Widget
adb shell pm uninstall -k --user 0 com.samsung.android.mfi

echo Gallery Stories
adb shell pm uninstall -k --user 0 com.samsung.storyservice

echo Google Calendar Sync
adb shell pm uninstall -k --user 0 com.google.android.syncadapters.calendar

echo Google Location History
adb shell pm uninstall -k --user 0 com.google.android.gms.location.history

echo Google One Time Init
adb shell pm uninstall -k --user 0 com.google.android.onetimeinitializer

echo Google Partner Setup
adb shell pm uninstall -k --user 0 com.google.android.partnersetup

echo Hiya Service
adb shell pm uninstall -k --user 0 com.hiya.star

echo Knox Enrollment Service
adb shell pm uninstall -k --user 0 com.sec.enterprise.knox.cloudmdm.smdms

echo Maps
adb shell pm uninstall -k --user 0 com.google.android.apps.maps

echo Modes and Routines
adb shell pm uninstall -k --user 0 com.samsung.android.app.routines

echo Quick Share
adb shell pm uninstall -k --user 0 com.samsung.android.app.sharelive

echo Quick Share Agent
adb shell pm uninstall -k --user 0 com.samsung.android.aware.service

echo Quick Share Connectivity
adb shell pm uninstall -k --user 0 com.samsung.android.mdx.kit

echo Samsung Editing Assets
adb shell pm uninstall -k --user 0 com.sec.android.app.ve.vebgm

echo Samsung Services
adb shell pm uninstall -k --user 0 com.samsung.android.setupindiaservicestnc

echo User Dictionary
adb shell pm uninstall -k --user 0 com.android.providers.userdictionary

echo YouTube
adb shell pm uninstall -k --user 0 com.google.android.youtube

echo ----------------------------------------------------------------
echo MINIMAL profile complete.
goto done

:done
echo.
echo Done. Reboot the device for changes to fully apply.
echo (Restore anything via factory reset if needed.)
echo.
pause
exit /b
