@echo off

md %appdata%\adb
xcopy /s  "%~dp0\adb.exe" %appdata%\adb\
xcopy /s  "%~dp0\AdbWinApi.dll" %appdata%\adb\