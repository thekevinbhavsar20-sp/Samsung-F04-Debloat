# \# Samsung Debloat

# 

# A tiered ADB debloat toolkit for Samsung Galaxy devices, using `.bat` scripts to progressively strip bloatware — from light cleanup to full experimental teardown.

# 

# Unlike flat "remove everything" lists, this repo is organized as \*\*4 progressive tiers\*\*, each riskier than the last. Run only as far as you're comfortable with.

# 

# \## ⚠️ Before you start

# 

# \- Requires \*\*ADB (Android Debug Bridge)\*\* and \*\*USB Debugging\*\* enabled on your device

# \- Recommended: back up your data and know how to enter \*\*Recovery Mode\*\* for your specific device before running Tier 3 or Tier 4

# \- Scripts use `pm uninstall --user 0 <package>` — this removes the app for the current user only. A factory reset restores everything.

# \- Tested on: Samsung Galaxy F04 (add your device/model here as you test)

# 

# \## Setup

# 

# 1\. Enable Developer Options → USB Debugging on your phone

# 2\. Download \[Android SDK Platform-Tools](https://developer.android.com/tools/releases/platform-tools)

# 3\. Connect your phone via USB, allow the debugging prompt

# 4\. Run the `.bat` file for the tier you want

# 

# \## Tiers

# 

# \### Tier 1: Surface

# Removes obvious, user-facing bloat — apps you'd normally uninstall from the app drawer anyway (My Galaxy, OneDrive, Samsung Wallet, Android Auto, etc). Low risk, fully reversible.

# 

# > Note: Game Optimizing Service and Radio (FM) may self-reinstall on next boot. This is expected — no need to worry if they come back.

# 

# \*\*File:\*\* `tier1\_surface\_debloat.bat`

# 

# \### Tier 2: Raw Device

# Strips everything down to what's needed for hardware to actually function — camera, calls, voice recorder, connectivity. More aggressive than Tier 1, but the phone stays fully usable day-to-day.

# 

# \*\*File:\*\* \*(coming soon)\*

# 

# \### Tier 3: Wound Android

# Removes almost everything. The device will become unstable — expect broken features, crashes, and a rough experience. \*\*One package is deliberately excluded\*\*: the data-recovery/restore app, kept intact in case you need to recover data after a wipe. That gets removed only in Tier 4.

# 

# \*\*File:\*\* \*(coming soon)\*

# 

# \### Tier 4: Kill Android

# The full, complete removal list — including the recovery app excluded in Tier 3. This is genuinely experimental and untested. Your device may become unstable, bootloop, or require a full factory reset / Odin flash to recover.

# 

# \*\*Use only if you're prepared to recover the device from Recovery Mode or Odin.\*\*

# 

# \*\*File:\*\* \*(coming soon)\*

# 

# \## Recovery

# 

# If your device becomes unstable after running a script:

# 1\. Boot into Recovery Mode (varies by model — search "\[your model] recovery mode key combo")

# 2\. Perform a factory reset, or

# 3\. Use Smart Switch / Odin to reflash stock firmware

# 

# \## Disclaimer

# 

# Use at your own risk. Removing system packages can cause instability or data loss. This repo is provided as-is with no guarantees; test on a non-primary device where possible.

