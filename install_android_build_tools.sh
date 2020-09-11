mkdir -p ~/.android/
touch ~/.android/repositories.cfg 
mkdir -p $ANDROID_SDK_ROOT/licenses
echo "601085b94cd77f0b54ff86406957099ebe79c4d6" > $ANDROID_SDK_ROOT/licenses/android-googletv-license
echo "859f317696f67ef3d7f30a50a5560e7834b43903" > $ANDROID_SDK_ROOT/licenses/android-sdk-arm-dbt-license
echo "24333f8a63b6825ea9c5514f83c2829b004d1fee" > $ANDROID_SDK_ROOT/licenses/android-sdk-license
echo "84831b9409646a918e30573bab4c9c91346d8abd" > $ANDROID_SDK_ROOT/licenses/android-sdk-preview-license
echo "33b6a2b64607f11b759f320ef9dff4ae5c47d97a" > $ANDROID_SDK_ROOT/licenses/google-gdk-license
echo "e9acab5b5fbb560a72cfaecce8946896ff6aab9d" > $ANDROID_SDK_ROOT/licenses/mips-android-sysimage-license
yes | sdkmanager --sdk_root=$ANDROID_SDK_ROOT --licenses
sdkmanager --sdk_root=$ANDROID_SDK_ROOT "platform-tools" "build-tools;${BUILD_TOOLS_VERSION}" "platforms;android-${TARGET_SDK}"