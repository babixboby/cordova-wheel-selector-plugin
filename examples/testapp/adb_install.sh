#!/bin/sh

$ANDROID_HOME/platform-tools/adb uninstall com.ionicframework.myapp417044
ionic cordova build android
$ANDROID_HOME/platform-tools/adb install platforms/android/build/outputs/apk/android-debug.apk
$ANDROID_HOME/platform-tools/adb shell am start -n io.appium.unlock/.Unlock
$ANDROID_HOME/platform-tools/adb shell am start -n com.ionicframework.myapp417044/.MainActivity

