SetWorkingDir %A_ScriptDir%
FileDelete Gridy.exe
IniWrite 1, Gridy.ini, General, ShowWelcomeTip
RunWait "C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /in Gridy.ahk /out Gridy.exe /icon "D:\Scripts\AutoHotkey\Gridy\G.ico"
