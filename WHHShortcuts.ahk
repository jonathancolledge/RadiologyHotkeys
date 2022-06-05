#NoEnv ; Recommended
SendMode Input ; Recommended for new scripts
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory

; Backlog, no action text:
#+b:: Send Backlog radiology report`; No action required.{Space}

; Paediatric abdominal ultrasound standard report:
::ussap::The liver is normal in size, shape, and echotexture. There is normal flow in the hepatic and portal veins.There is no intrahepatic or extrahepatic biliary duct dilation. The gallbladder is well distended, thin-walled, and contains no stones. The spleen is not enlarged and measures [] cm. The upper limit at this age is [] cm.{enter}{enter}The pancreas is normal.{enter}{enter}Both kidneys are normal. There is no hydronephrosis and there are no focal lesions. The right kidney measures approximately [] cm and the left kidney measures approximately [] cm. The mean renal length at this age is [] cm.{enter}{enter}The bladder was well filled and unremarkable.{enter}{enter}

::sigp::Dr Jonathan Colledge{enter}Consultant paediatric radiologist{enter}GMC 6096476
::sigreg::Dr Asma Bitar De Zayas-Enriquez{enter}Radiology Specialist Registrar{enter}GMC No 7515883{enter}Dr Jonathan Colledge{enter}Consultant paediatric radiologist{enter}GMC 6096476
::nbi::No bony injury identified
::ncxr::The lungs and pleural spaces are clear. The cardic and mediastinal contours are normal.
::nbasw::Dilute barium was given orally. The oesopahgus and gastro-oesophageal junction are normal. The DJ flexure is normal.
::mcugreport::The predicted bladder capacity is [] ml. 
::nctbp::The CT perfusion does not reveal any evidence of matched or mismatched perfusion defects
::actbp::There is a large area in left temporofrontoparietal region which shows increased MTT values and markedly reduced CBF in keeping with hypoperfusion/ reversible ischaemia. There are few very small areas of markedly reduced CBV values that represents foci of core infarcted tissue but these are very small as compared to the size of the hypoperfused zone.
::nhead::No intra-axial or extra-axial haemorrhage. No mass or mass effect. The ventricles, sulci, and basal cisterns are normal. No skull vault or base of skull fracture.{enter}Conclusion: No acute intracranial abnormality on this scan.
::uhead::No intra-axial or extra-axial haemorrhage. No mass or mass effect. There is global parenchymal volume loss and deep white matter ischaemic change. No skull vault or base of skull fracture.{enter}Conclusion: No acute intracranial abnormality on this scan.
::nmrbrain::No acute parenchymal abnormality identified. No midline shift. No haemorrhage or infarction. No mass or mass effect. No restricted diffusion. The ventricles, sulci and basal cisterns are unremarkable. Normal flow-voids are seen within the major intra cerebral vascular structures. The orbits, paranasal sinuses and mastoid air cells are unremarkable.{enter}{enter}Conclusion: No acute intracranial abnormality seen.

; To protocol a CTPA in Soliton on a 1920x1080 screen. This will flag for within 24 hours.
^+c:: ; this is control, shift, and c (that's what the ^+c stands for) and that will execute the clicks below, with a 0.5 or 0.3 second pause between clicks or text when needed.
; This clicks in the protocol box and sends text
;MouseClick, left, 50, 460 
;Click, Screen, 50, 460
CoordMode, Mouse, Screen 
x := 50
y := 460
Click %x% %Y% 
Send 75 ml Omnipaque 300 IV
sleep, 500
; This clicks Add to add the protocol
;MouseClick, left, 50, 555 
;Click, Screen, 50, 555 
CoordMode, Mouse, Screen 
x := 50
y := 555
Click %x% %Y%
; This clicks the Flags button
;MouseClick, left, 1295, 1006
;Click, Screen, 1295, 1006 
CoordMode, Mouse, Screen 
x := 1295
y := 1006
Click %x% %Y%
; This clicks the filter for flags and send the text i to filter for inpatients
;MouseClick, left, 1325, 529
;Click, Screen, 1325, 529
CoordMode, Mouse, Screen 
x := 1325
y := 529
Click %x% %Y%
Send i
sleep, 300
; This clicks the inpatient within 24 hours flag
;MouseClick, left, 1325, 563
;Click, Screen, 1325, 563
CoordMode, Mouse, Screen 
x := 1325
y := 563
Click %x% %Y%
; This clicks the Ok button for flags
;MouseClick, left, 1290, 975
;Click, Screen, 1290, 975
CoordMode, Mouse, Screen 
x := 1290
y := 975
Click %x% %Y%
sleep, 300
; This clicks Yes to save changes to flags
;MouseClick, left, 926, 584
;Click, Screen, 926, 584
CoordMode, Mouse, Screen 
x := 926
y := 584
Click %x% %Y%
; This clicks the button Vetted
;MouseClick, left, 1286, 328
;Click, Screen, 1286, 328
CoordMode, Mouse, Screen 
x := 1286
y := 328
Click %x% %Y%
; This clicks save
;MouseClick, left, 117, 1006
;Click, Screen, 117, 1006
CoordMode, Mouse, Screen 
x := 117
y := 1006
Click %x% %Y%
Return 


; To protocol a non-contrast head within 4 hours
^+h::
; This clicks in the protocol box and sends text
;MouseClick, left, 50, 460 
;Click, Screen, 50, 460 
CoordMode, Mouse, Screen 
x := 50
y := 460
Click %x% %Y% 
Send No contrast
sleep, 500
; This clicks Add to add the protocol
;MouseClick, left, 50, 555 
;Click, Screen, 50, 555 
CoordMode, Mouse, Screen 
x := 50
y := 555
Click %x% %Y%
; This clicks the Flags button
;MouseClick, left, 1295, 1006
;Click, Screen, 1295, 1006 
CoordMode, Mouse, Screen 
x := 1295
y := 1006
Click %x% %Y%
; This click the filter for flags and send the text i to filter for inpatients
;MouseClick, left, 1325, 529
;Click, Screen, 1325, 529
CoordMode, Mouse, Screen 
x := 1325
y := 529
Click %x% %Y%
Send i
sleep, 300
; This clicks the inpatient within 4 hours flag
;MouseClick, left, 1325, 597
;Click, Screen, 1325, 597
CoordMode, Mouse, Screen 
x := 1325
y := 597
Click %x% %Y%
; This clicks the Ok button for flags
;MouseClick, left, 1290, 975
;Click, Screen, 1290, 975
CoordMode, Mouse, Screen 
x := 1290
y := 975
Click %x% %Y%
sleep, 300
; This clicks Yes to save changes to flags
;MouseClick, left, 926, 584
;Click, Screen, 926, 584
CoordMode, Mouse, Screen 
x := 926
y := 584
Click %x% %Y%
; This clicks the button Vetted
;MouseClick, left, 1286, 328
;Click, Screen, 1286, 328
CoordMode, Mouse, Screen 
x := 1286
y := 328
Click %x% %Y%
; This clicks save
;MouseClick, left, 117, 1006
;Click, Screen, 117, 1006
CoordMode, Mouse, Screen 
x := 117
y := 1006
Click %x% %Y%
Return 

; To protocol a contrast enhanced scan within 24 hours.
^+a::
; This clicks in the protocol box and sends text
;MouseClick, left, 50, 460 
;Click, Screen, 50, 460 
CoordMode, Mouse, Screen 
x := 50
y := 460
Click %x% %Y% 
Send 100 ml Omnipaque 300 IV
sleep, 500
; This clicks Add to add the protocol
;MouseClick, left, 50, 555 
;Click, Screen, 50, 555 
CoordMode, Mouse, Screen 
x := 50
y := 555
Click %x% %Y%
; This clicks the Flags button
;MouseClick, left, 1295, 1006
;Click, Screen, 1295, 1006 
CoordMode, Mouse, Screen 
x := 1295
y := 1006
Click %x% %Y%
; This click the filter for flags and send the text i to filter for inpatients
;MouseClick, left, 1325, 529
;Click, Screen, 1325, 529
CoordMode, Mouse, Screen 
x := 1325
y := 529
Click %x% %Y%
Send i
sleep, 300
; This clicks the inpatient within 24 hours flag
;MouseClick, left, 1325, 563
;Click, Screen, 1325, 563
CoordMode, Mouse, Screen 
x := 1325
y := 563
Click %x% %Y%
; This clicks the Ok button for flags
;MouseClick, left, 1290, 975
;Click, Screen, 1290, 975
CoordMode, Mouse, Screen 
x := 1290
y := 975
Click %x% %Y%
sleep, 300
; This clicks Yes to save changes to flags
;MouseClick, left, 926, 584
;Click, Screen, 926, 584
CoordMode, Mouse, Screen 
x := 926
y := 584
Click %x% %Y%
; This clicks the button Vetted
;MouseClick, left, 1286, 328
;Click, Screen, 1286, 328
CoordMode, Mouse, Screen 
x := 1286
y := 328
Click %x% %Y%
; This clicks save
;MouseClick, left, 117, 1006
;Click, Screen, 117, 1006
CoordMode, Mouse, Screen 
x := 117
y := 1006
Click %x% %Y%
Return 


/*
The forward slash and star start a multi-line comment which has to be closed - see bleow
# is win key
return finishes the hotkey, but is not needed if your hotkey is only a single line
^ is Ctrl
! is Alt
Send puts in/types/sends keystrokes
To send a carriage return/enter use {enter}
+ is shift
<! left Alt where < indicates left key of a pair and > a right key
<^>! AltGr
To autocorrect text, enclose the text in colons e.g. ::sigp:: followed by the text to put in. There is no need for Send
; This is a single line comment

To build this, copy the Autohotkey folder to C: and use the following command (modify the version of Autohotkey in the folder name):
Copy to C:
"C:\AutoHotkey_1.1.34.02\Compiler\Ahk2Exe.exe" /in "Shortcuts.ahk"
You need to then copy one of the bin files in the compiler directory and rename according to the readme:
Essentially, take the Unicode 64-bit.bin file, copy it, and rename it to AutoHotkeySC.bin

This is what the readme says:
"Scripts are "compiled" by combining them with a .bin file containing
the script interpreter, similar to AutoHotkey.exe.  This version of
Ahk2Exe requires a .bin file compiled from AutoHotkey 1.1 source code
or a compatible fork.  The official download includes three:

  - ANSI 32-bit.bin
  - Unicode 32-bit.bin
  - Unicode 64-bit.bin

One of these should be selected from the "Base File" drop-down list
in the GUI.  If "(Default)" is selected, there must be a file named
AutoHotkeySC.bin in the Ahk2Exe directory.  This is normally created
by the AutoHotkey installer (simply a copy of another bin file).
If this file does not exist, Ahk2Exe will attempt to copy it from
one of the other bin files (typically Unicode 32-bit)."

This closes the multi-line comment:
*/
