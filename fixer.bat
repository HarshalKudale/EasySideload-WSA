@echo off

md C:\Users\%username%\AppData\Roaming\adb
xcopy /s  "%~dp0\adb.exe" C:\Users\%username%\AppData\Roaming\adb\
xcopy /s  "%~dp0\AdbWinApi.dll" C:\Users\%username%\AppData\Roaming\adb\