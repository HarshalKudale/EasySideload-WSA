@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=
REM BFCPEICON=
REM BFCPEICONINDEX=-1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=0
REM BFCPEVERVERSION=1.0.0.0
REM BFCPEVERPRODUCT=Product Name
REM BFCPEVERDESC=Product Description
REM BFCPEVERCOMPANY=Your Company
REM BFCPEOPTIONEND
@ECHO ON
@echo off

cd /d %~dp0
adb connect 127.0.0.1:58526 
adb push %1 ./storage/emulated/0/Download


:: From https://github.com/loboly-19/EasyPush-WSA
:: Drag and drop file on this bat file to push them to download folder of android subsystem for linux.
