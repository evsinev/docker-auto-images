FROM payneteasy/jdk-21:4

ENV ANDROID_COMPILE_SDK="34" \
    ANDROID_BUILD_TOOLS="34.0.0" \
    ANDROID_SDK_ROOT=$PWD/android-sdk-linux \ 
    PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/emulator

RUN env
RUN apt-get update \
    && apt install -y unzip \ 
    && wget --output-document=android-sdk.zip https://dl.google.com/android/repository/commandlinetools-linux-10406996_latest.zip \
    && echo A | unzip -q android-sdk.zip -d android-sdk-linux \
    && mkdir $ANDROID_SDK_ROOT/cmdline-tools/latest \
    && mv $ANDROID_SDK_ROOT/cmdline-tools/lib $ANDROID_SDK_ROOT/cmdline-tools/latest \
    && mv $ANDROID_SDK_ROOT/cmdline-tools/bin $ANDROID_SDK_ROOT/cmdline-tools/latest \
    && mv $ANDROID_SDK_ROOT/cmdline-tools/source.properties $ANDROID_SDK_ROOT/cmdline-tools/latest \
    && mv $ANDROID_SDK_ROOT/cmdline-tools/NOTICE.txt $ANDROID_SDK_ROOT/cmdline-tools/latest  
RUN $ANDROID_SDK_ROOT/cmdline-tools/latest/bin/sdkmanager --sdk_root=${ANDROID_SDK_ROOT} --update \
&& echo y | $ANDROID_SDK_ROOT/cmdline-tools/latest/bin/sdkmanager --sdk_root=${ANDROID_SDK_ROOT} "platforms;android-${ANDROID_COMPILE_SDK}" "build-tools;${ANDROID_BUILD_TOOLS}"


