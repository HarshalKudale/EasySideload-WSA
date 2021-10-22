# EasySideload-WSA
Note-- Some antiviruses may give false-positive you can convert bat to exe yourself if you dont trust my installer.exe

VirusTotal -https://www.virustotal.com/gui/file/1cf7787e20fe858385ea3d76dfa27ef531139db79d04ecba80bd45dc8ac1f133/detection

#Updated files
**Now you dont need to donwload platform-tools**

Functionalities -
1. APK installer
2. File transfer to WSA
3. One clcik WSA settings.

# Tutorial

~~Donwload platform tools from here - https://developer.android.com/studio/releases/platform-tools~~

Download the zip and extract it anywhere.

![image](https://user-images.githubusercontent.com/54770218/138447370-b7e06a95-90bf-4996-baeb-0ba20a40a408.png)

Go to apk file's properties, and click on change.

![image](https://user-images.githubusercontent.com/54770218/138446994-04d3832f-bc07-4b97-b28b-83d080aaa30b.png)

Now locate and select the installer.exe file in extracted folder.

![image](https://user-images.githubusercontent.com/54770218/138447153-6ecc2e7c-a0cc-4fe4-8940-368103cd0d96.png)

Click apply ok

Now everytime you open apk file it will be installed.
please open issue if there is any problem.

Update  1.0.1.5

Now works with drag and drop, and open with context menu.
# Development

Some things to consider for the future:
  - [] Currently ADB is an executable as a part of your distribution. It's not exactly kosher and should be replaced with on-line acquisition of ABD. Otherwise, Google might flag your repo
  - [] Go installer is rather basic, but works ad desired. Some TLC required

I've added go installer wrapper to installer.bat. If you want to do any changes in the installer itself, use `build.bat` script to re-build the application.

After go builds the app, I'm using https://github.com/akavel/rsrc to embed the Windows manifest to the EXE file, so Windows would treat it as an app that should be run under admin privileges. 
