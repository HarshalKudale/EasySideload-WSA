@echo off

cd %~dp0\platform-tools\
adb connect 127.0.0.1:58526 
adb install %1

:: By Harshal
:: https://github.com/HarshalKudale/EasySideload-WSA
