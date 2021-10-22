@echo off

cd /d %~dp0
adb connect 127.0.0.1:58526 
adb install %1


::By Harshal Kudale
::https://github.com/HarshalKudale/EasySideload-WSA