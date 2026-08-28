' Prometheus SkillsForge - launches the app with no terminal window.
' Runs SkillsForge.ps1 fully hidden (window style 0, no flash).
Set sh = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
scriptDir = fso.GetParentFolderName(WScript.ScriptFullName)
psScript = scriptDir & "\SkillsForge.ps1"
sh.CurrentDirectory = scriptDir
cmd = "powershell.exe -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File """ & psScript & """"
sh.Run cmd, 0, False
