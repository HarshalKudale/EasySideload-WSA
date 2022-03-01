@echo off
set "package=%1"

if exist C:\Users\%username%\AppData\Roaming\adb\ (
C:\Users\%username%\AppData\Roaming\adb\adb connect 127.0.0.1:58526 
C:\Users\%username%\AppData\Roaming\adb\adb -s 127.0.0.1:58526 shell monkey -p com.android.settings -c android.intent.category.LAUNCHER 1

EXIT /B
) else (
echo Run fixer.bat to fix error
pause
)

:: "Harshal Kudale"
:: "https://github.com/HarshalKudale/EasySideload-WSA/"
