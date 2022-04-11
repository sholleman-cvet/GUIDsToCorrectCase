SetTitleMatchMode, 1 

; Globals
Global GUIDRegex := "([0-9a-fA-F]{8}\-(?:[0-9a-fA-F]{4}\-){3}[0-9a-fA-F]{12})"

; Window Groups
GroupAdd, UppercaseGUID, % "ahk_exe Ssms.exe" 
GroupAdd, UppercaseGUID, % "ahk_exe ReadyAPI.exe" 

GroupAdd, LowercaseGUID, % "Dev Tools - Elastic" 
GroupAdd, LowercaseGUID, % "Search | Splunk" 

; Hotkeys
$^v::
if (WinActive("ahk_group UppercaseGUID")) 
	Clipboard := RegExReplace(Clipboard, GUIDRegex, "$U1")
else if (WinActive("ahk_group LowercaseGUID")) 
	Clipboard := RegExReplace(Clipboard, GUIDRegex, "$L1")
Send, ^v
return
