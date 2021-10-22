@echo off

cd /d %~dp0

adb connect 127.0.0.1:58526

adb shell monkey -p com.android.settings -c android.intent.category.LAUNCHER 1

exit /s

::by Harshal Kudale
::https://github.com/HarshalKudale/EasySideload-WSA/
