; ; AutoHotkey Version: 1.x
; Language:       English
; Platform:       WinXP
; Author:         Kevin O'Neal <kevin.oneal@kronos.com>
;
; Eclipse Exporter
;     Key: F6 
;     Operation: Only in Eclipse and open files.       
;     Info: One example is given for exporting jsp files to the deployment folder.  
;           Add any necessary file name to the script to export and export location.
; WFC SuperUser
;     Key: F12
;     Operation: Works in IE, Firefox and Chrome.
;     Info: Logs into a WFC Application as SuperUser.
; WFC URL
;     Key: F10
;     Operation: Works in IE, Firefox and Chrome.
;     Info: Adds http:// to the beginning of a line and concatenates /wfc/logon to the
;           end of a line.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, RegEx 

;This hot key will export the active file to the directory you specify.
;If the file is not recognized there will be a message box with that indicated.
;If the program does not see the overwrite warning dialog at the end of the export
;process it will warn the user that they may have selected the wrong location.
;#IfWinActive ahk_class (SWT)
F2::
;save the file first
Send ^s
;Send ^b
;Find the active window name and use a RegEx to get the file name from that
WinGetTitle, myVar, A
FoundPos := RegExMatch(myVar , "([A-Za-z\-]*)\.(jsp|xml|js)",FileName)


;MsgBox %FileName%
;This is where you can add new export location based on file names.
if ( FileName = "activity-lookup.jsp" or FileName = "activity-config.jsp" or FileName = "payCodeAction-editor.jsp"){
   FilePath = C:\Kronos\jboss\server\wfc\deploy\wfc.ear\wfc.war\applications\wfa\html 
}
else if (FileName = "essLogonProcessing.jsp" or FileName = "ProcessForm.jsp" or FileName = "webFormsLogon.jsp" or FileName = "essLogon.jsp"){
   FilePath = C:\Kronos\jboss\server\wfc\deploy\wfc.ear\wfc.war\applications\wfa\html\Collector
}
else if(FileName = "accessibility.jsp"){
   FilePath = C:\Kronos\jboss\server\wfc\deploy\wfc.ear\wfc.war\applications\brc\html
}
else if(FileName = "hyperfind.jsp" or FileName = "deviceTypeList.jsp" or FileName = "timePeriod.jsp" or FileName = "treatmentExport.jsp"){
	FilePath = C:\Kronos\jboss\server\wfc\deploy\wfc.ear\wfc.war\applications\brc\html   
}
else if(FileName = "brc_exception_strings.properties"){
	FilePath = C:\Kronos\jboss\server\wfc\deploy\wfc.ear\wfc.war\applications\brc\properties 
}
else if(FileName = "MenuItem.xml"){
	FilePath = C:\Kronos\jboss\server\wfc\deploy\wfc.ear\wfc.war\applications\brc\data
}
else {
   MsgBox This file was not recognized. `nCheck your AHK script to verify the file is listed in the if/else statement.
   return
}
;Export command
Send {Alt}fo

WinWait, Export
ControlSetText, Edit1, File System 
Sleep 400
Send {Enter}
Send {Enter}
WinWait, Export
ControlSetText, Edit2, %FilePath%, Export
;;Sleep 100
ControlClick, &Finish, Export,,,,NA

;wait for the overwrite warning box 
WinWait,  Question,,1
if ErrorLevel{
   MsgBox The Overwrite Warning dialog box did not appear. `n You may have tried to save to the wrong folder.
   return
}
Sleep 400
ControlClick, &Yes, Question,,,,NA
return
;#IfWinActive

#IfWinActive ahk_class (IEFrame|Chrome|Mozilla)
F12::
Send SuperUser
Send {Tab}
Sleep 100
Send kronites
Send {Enter}
return

F10::
Send wfa315	
Send {Tab}
Sleep 100
Send kronites
Send {Enter}
return

#IfWinActive

F11::
Send ;password here
Send {Enter}
return

^!n::
IfWinExist, Notepad++
   WinActivate
else
   Run Notepad++
return

^!c::
IfWinExist Console
   WinActivate
else
   Run Cons
return

^!e::
IfWinExist ahk_class SWT_Window0
   WinActivate 
else
   Run C:\eclipse37\eclipse.exe
return

