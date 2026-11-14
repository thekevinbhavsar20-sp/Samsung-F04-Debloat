SAMSUNG DEBLOAT
 
A tiered ADB debloat toolkit for Samsung Galaxy devices, using .bat scripts to progressively strip bloatware, from a light cleanup to an aggressive teardown.
 
Unlike flat "remove everything" lists, each script is organized into progressive profiles, each stronger than the last. Run only as far as you are comfortable with.
 
 
BEFORE YOU START
 
- Requires ADB (Android Debug Bridge) and USB Debugging enabled on your device
- Recommended: back up your data and know how to enter Recovery Mode for your specific device before running Raw Android or Minimal
- Scripts use: adb shell pm uninstall -k --user 0 <package>
  This removes the app for the current user (user 0) only. The system partition is not touched, and a factory reset restores everything.
- Some protected packages (for example Samsung Account) may refuse to uninstall. The script prints ADB's real result for every app, so you will see "Success" or "Failure" for each one.
- Tested on: Samsung Galaxy F04 (add your device/model here as you test)
 
 
SETUP
 
1. Enable Developer Options and turn on USB Debugging on your phone
2. Download Android SDK Platform-Tools: https://developer.android.com/tools/releases/platform-tools
3. Connect your phone via USB and allow the debugging prompt
4. Run the .bat file and pick a profile from the menu
 
 
PROFILES (F04_Debloat.bat)
 
1. Surface
Removes only light, surface-level apps: Application recommendations, Discover, Samsung Checkout, Samsung Cloud and Smart Switch. Low risk, fully reversible.
 
2. Raw Android
A more aggressive strip that includes everything in Surface. Removes Samsung and Google extras such as Galaxy Store, Galaxy Themes, Samsung Keyboard, Samsung Account, Find My Mobile, Meet, Google, Meta app installers, config and update services, and more. Meant for power users; the phone stays usable but loses many Samsung services.
 
3. Minimal
Coming soon.
 
 
RECOVERY
 
If your device becomes unstable after running a script:
1. Boot into Recovery Mode (varies by model; search "[your model] recovery mode key combo")
2. Perform a factory reset, or
3. Use Smart Switch / Odin to reflash stock firmware
 
 
DISCLAIMER
 
Use at your own risk. Removing system packages can cause instability or data loss. This repo is provided as-is with no guarantees; test on a non-primary device where possible.
 