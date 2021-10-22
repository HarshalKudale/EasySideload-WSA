@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=D:\Android_apps\EasySideload-WSA\WSA settings.exe
REM BFCPEICON=D:\Android_apps\Dtafalonso-Android-Lollipop-Settings (1).ico
REM BFCPEICONINDEX=-1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=1
REM BFCPEVERVERSION=1.0.0.0
REM BFCPEVERPRODUCT=WSA settings
REM BFCPEVERDESC=Open WSA settings
REM BFCPEVERCOMPANY=CodeWrath
REM BFCPEOPTIONEND
@ECHO ON
@echo off

adb connect 127.0.0.1:58526

adb shell monkey -p com.android.settings -c android.intent.category.LAUNCHER 1

::by Harshal Kudale
::https://github.com/HarshalKudale/EasySideload-WSA/