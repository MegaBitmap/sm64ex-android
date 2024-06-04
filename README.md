# sm64ex-android
 Super Mario 64, sm64ex, for Android

It features support for touch controls, rumble, controllers, and keyboards.  
The touch controls will automatically hide when using a controller or keyboard.  
Vibration or rumble can disabled in pause -> options -> controls -> rumble strength -> 0  


## How to compile on windows for android:

Install MSYS2 and android studio.

https://www.msys2.org/
https://developer.android.com/studio

Run MINGW64

```
pacman -S git
git clone https://github.com/MegaBitmap/sm64ex-android
```

Rename the original sm64 rom to baserom.us.z64  
Move baserom.us.z64 into the folder:
`C:\msys64\home\%username%\sm64ex-android\app\jni\src\`  

```
cd sm64ex-android
bash Setup-MINGW64.sh
```

It will check for updates then start extracting assets from the rom.  

This may take a while.  

After that is finished, run Android Studio and open the project folder:
`C:\msys64\home\%username%\sm64ex-android\`

Wait for gradle to sync.

Optional: Replace the app icons in `sm64ex-android\app\src\main\res\mipmap*` folders  
https://developer.android.com/studio/write/create-app-icons#access

After gradle finishes, click the hammer icon to build the app.  

This may take a while.  

Upon a successful build, the output apk file will be located here:  
`C:\msys64\home\%username%\sm64ex-android\app\build\outputs\apk\debug\app-debug.apk`  

Rename the apk to `sm64ex-android.apk`, install, and play!

## Sources

https://github.com/libsdl-org/SDL/tree/release-2.30.3

https://github.com/VDavid003/sm64-port-android/tree/ex/master

https://github.com/VDavid003/sm64-port-android-base/tree/sm64ex

https://github.com/VDavid003/sm64-port-android/commit/f54aa0aa1bcf4ec7626e42fc960840d65ef324d3

