# GUIDsToCorrectCase
Changes the case of all GUIDs copied to clipboard depending on the window you are pasting in.

## Prerequisites
* [AutoHotkey](https://www.autohotkey.com/download/?)

## How it works
* If the active window has been added to either **UppercaseGUID** or **LowercaseGUID** [window group](https://www.autohotkey.com/docs/commands/GroupAdd.htm), then when pasting via ctrl + v, the clipboard is edited to change the case of any GUIDs accordingly. If the active window is not added to those groups, no changes are made to the clipboard.
* Windows belonging to **UppercaseGUID** group will edit all GUIDs on your clipboard to uppercase. By default this group contains: Microsoft SQL Server Management Studio (SSMS) and ReadyAPI.
* Windows belonging to **LowercaseGUID** group will edit all GUIDs on your clipboard to lowercase. By default this group contains: Splunk Search and Elastic Search.

## How to add windows to a group
* Windows can be added to a group using the title of the window to match, by default [SetTitleMatchMode, 1](https://www.autohotkey.com/docs/commands/SetTitleMatchMode.htm) is used. MatchMode 3 is not used because the Splunk Search window is titled "Search | Splunk \<Version #>". Which would require updating the window title in the script on each version change.
* Windows can also be added to a group using the window's [ahk_ Criteria](https://www.autohotkey.com/docs/misc/WinTitle.htm). 
* Use Windows Spy to easily find the title and ahk_ Criteria of the active window. Windows Spy can be launched by right clicking a running AHK script's Icon in the System Tray and selecting "Windows Spy" or by running it from the installation directory - typically C:\Program Files\AutoHotkey\WindowsSpy.ahk. 

![Launch Windows Spy](https://i.imgur.com/uFVnOJd.png)

![Windows Spy](https://i.imgur.com/kjMRUIw.png)

