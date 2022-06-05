# RadiologyHotkeys
An autohotkey script to automate protocolling with a single key combo and autocorrect template reports

Please seen the AHK file for instructions - it is extensively commented.

To build this, download Autohotkey (https://www.autohotkey.com/) and copy the AHK file and the Autohotkey folder to C: or a location of your choice (modify the command below if this is the case).
You need to then copy one of the bin files in the compiler directory and rename according to the readme. Essentially, take the Unicode 64-bit.bin file, copy it, and rename it to AutoHotkeySC.bin

Then use the following command (modify the version of Autohotkey in the folder name) in your command prompt:

"C:\AutoHotkey_1.1.34.02\Compiler\Ahk2Exe.exe" /in "Shortcuts.ahk"

This will create an executable that does not require admin rights. You can run it and leave it running. All you key combos and templates will now work.
