SetTitleMatchMode, 1 

; Globals
Global GuidRegex := "([0-9a-fA-F]{8}\-(?:[0-9a-fA-F]{4}\-){3}[0-9a-fA-F]{12})"

; Window Groups
GroupAdd, UppercaseGuid, % "ahk_exe Ssms.exe" 
GroupAdd, UppercaseGuid, % "ahk_exe ReadyAPI.exe" 

GroupAdd, LowercaseGuid, % "Dev Tools - Elastic" 
GroupAdd, LowercaseGuid, % "Search | Splunk" 

; Hotkeys
$^v::
if (WinActive("ahk_group UppercaseGuid")) 
	Clipboard := RegExReplace(Clipboard, GuidRegex, "$U1")
else if (WinActive("ahk_group LowercaseGuid")) 
	Clipboard := RegExReplace(Clipboard, GuidRegex, "$L1")
Send, ^v
return