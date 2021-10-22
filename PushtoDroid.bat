@echo off

cd %~dp0\
adb connect 127.0.0.1:58526 
adb push %1 ./storage/emulated/0/Download


:: From https://github.com/loboly-19/EasyPush-WSA
:: Drag and drop file on this bat file to push them to download folder of android subsystem for linux.
