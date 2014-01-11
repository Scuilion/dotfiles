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

