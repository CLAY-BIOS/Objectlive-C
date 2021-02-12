# ThinkPad T450s X250 T450 Big Sur OpenCore 0.6.6
<img align="right" src="/picture/Thismachine.png" alt="Lenovo Thinkpad T450s macOS Hackintosh OpenCore" width="300">

[![macOS](https://img.shields.io/badge/macOS-11.2.1-blue)](https://developer.apple.com/documentation/macos-release-notes)
[![OpenCore](https://img.shields.io/badge/OpenCore-0.6.6-green)](https://github.com/acidanthera/OpenCorePkg)
[![BIOS](https://img.shields.io/badge/BIOS-1.37-lightgrey)](https://pcsupport.lenovo.com/us/en/products/laptops-and-netbooks/thinkpad-t-series-laptops/thinkpad-t450s/downloads/driver-list/component?name=BIOS%2FUEFI)

**DISCLAIMER:**
Read the entire README before you start.
I am not responsible for any damages you may cause.  
Should you find an error or improve anything — whether in the config or in the documentation — please consider opening an issue or pull request.  
If you find my work useful, please consider donating via PayPal.
It would mean a lot to me.

## Introduction to the
- This is a full ThinkPad T450s macOS Hackintosh configuration.
- Sound card default Layout-id = 32, earphone noise please use the sound card repair script(ALCPlugFix).
- If you want to use the audio interface on the Docking, set the layout-id of the sound card to 55 and select the line output.
- Support touch screen (With multi-touch and touchscreen gestures).
- support Catalina.
- support Mojave.
- support ThinkPad X250 ThinkPad T450 ThinkPad T450s.
- open Hi-DPI  reference:   https://github.com/xzhih/one-key-hidpi

## Hardware information
```  
- CPU：Intel Core i7-5600U 2.6GHz (Boots 3.2GHz)

- The core graphics：Intel HD 5500 Graphics 

- sound card：ALC292

- Wireless network card：DW1820A  Intel 7265AC   Intel AX200
```
## Installation

<details>  
<summary><strong>How to install macOS</strong></summary>
</br>

1. [Create an installation media](https://dortania.github.io/OpenCore-Install-Guide/installer-guide/#making-the-installer)
1. Download the [latest EFI folder](https://github.com/CLAY-BIOS/Lenovo-ThinkPad-T450s-Hackintosh-Big-Sur-OpenCore/releases) and copy it into the ESP partiton
1. Change your BIOS settings according to the table below
1. Boot from the USB installer (press `F12` to choose boot volume) and [start the installation process](https://dortania.github.io/OpenCore-Install-Guide/installation/installation-process.html#booting-the-opencore-usb)

</details>

## BIOS (1.37)
-  Security -> Security Chip`: **Disabled**;
-  Memory Protection -> Execution Prevention`: **Enabled**;
-  Virtualization -> Intel Virtualization Technology`: **Enabled**;
-  Internal Device Access -> Bottom Cover Tamper Detection`: must be **Disabled**;
-  Anti-Theft -> Current Setting`: **Disabled**;
-  Anti-Theft -> Computrace -> Current Setting`: **Disabled**;
-  Secure Boot -> Secure Boot`: **Disabled**;
-  UEFI/Legacy Boot`: **UEFI Only**;
-  CSM Support`: **Yes**.

# Intel Wi-Fi
- To add the driver file to the project, check it according to your system version, and the default is Big Sur.
- Airdrop is not available.
- Don't discuss Intel Wi Fi because the driver is unstable.
- reference:    https://github.com/OpenIntelWireless/itlwm
![AirportItlwm](./picture/AirportItlwm.png)

# Docking
- Use of docking can cause sleep problems, the solution is to add SSDT-IGBE patch to config.plist->ACPI.
- Flap mode cannot be used with SSDT-IGBE patch.

# ThinkPad Assistant 
- Allows you to use all function keys on Thinkpad T450s X250 T450 laptop.
- Copy the ThinkpadAssistant into the Application folder.
- Start ThinkpadAssistant and check "Start when logged in" in the menu bar.
- F4: Mute / Unmute Microphone (with Status LED indication).
- F7: Screen mirroring / Screen extending.
- F8: Activate / Deactivate Wi-Fi.
- Left Shift+F8: Activate / Deactivate Bluetooth.
- F9: Open System Preferences.
- F12: Open Launchpad.
- FN+Space: Toggle Keyboard Backlight.
- FN + 4: Sleep shortcut.
  (press the sleep shortcut again during sleep to terminate sleep).
  (When an external monitor is connected, after pressing the sleep button, the working screen changes to an external monitor (the internal screen is turned off); pressing the sleep button again, the internal and external monitors return to normal.)
- PrtSc maps to F13: this can be set as screenshot in system preferences -> keyboard -> shortcut.
-----------------------------------------------------------------------------------------------------------------
![demo](./picture/demo.gif)

## Effective
- CPU
- Sleep/Wake up
- Wifi
- Bluetooth
- Handoff, Continuity, AirDrop
- iMessage, FaceTime, App Store, iTunes Store
- Ethernet card     (Unable to use the Ethernet interface on the laptop after connecting the docking station)
- sound card
- USB
- Battery and complete battery information
- touch screen
- touch pad
- little red dot
- miniDP
- SD card reader
- Docking USB
- Docking Ethernet
- Docking Audio  ( Set layout-id of sound card to 55. )

## Invalid
- VGA
- The fingerprint
- Docking DisplayPort
- Docking VGA
- Docking DVI
- Docking HDMI

> ## Credits

- [@tylernguyen](https://github.com/tylernguyen/x1c6-hackintosh) new generation of battery patches.
- [@zhen-zen](https://github.com/zhen-zen) for YogaSMC.
- [daliansky/OC-little](https://github.com/daliansky/OC-little) for various ACPI hotpatch samples.  
- [@xzhih](https://github.com/xzhih) for one-key-hidpi.  
- [@cholonam](https://github.com/cholonam/Sinetek-rtsx) Card reader fix. https://github.com/cholonam/Sinetek-rtsx/pull/18 
- [@MSzturc](https://github.com/MSzturc/ThinkpadAssistant) for ThinkpadAssistant.
- [@zxystd](https://github.com/OpenIntelWireless/itlwm) Intel Wi-Fi Drivers for macOS.

The greatest thank you and appreciation to the [Acidanthera](https://github.com/acidanthera) team.

Questions are welcome, but please don't ask too low - level questions.
