FROM payneteasy/jdk-21:4

RUN apt-get update \
    && apt install -y unzip \
    && export ANDROID_COMPILE_SDK="34" \ 
    && export ANDROID_BUILD_TOOLS="34.0.0" \ 
    && wget --output-document=android-sdk.zip https://dl.google.com/android/repository/commandlinetools-linux-10406996_latest.zip \
    && echo A | unzip -q android-sdk.zip -d android-sdk-linux \
    && export ANDROID_SDK_ROOT=$PWD/android-sdk-linux \
    && export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin/ \
    && export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools/ \
    && export PATH=$PATH:$ANDROID_SDK_ROOT/emulator/ \
    && mkdir $ANDROID_SDK_ROOT/cmdline-tools/latest \
    && mv $ANDROID_SDK_ROOT/cmdline-tools/lib $ANDROID_SDK_ROOT/cmdline-tools/latest \    
    && mv $ANDROID_SDK_ROOT/cmdline-tools/bin $ANDROID_SDK_ROOT/cmdline-tools/latest \   
    && mv $ANDROID_SDK_ROOT/cmdline-tools/source.properties $ANDROID_SDK_ROOT/cmdline-tools/latest \       
    && mv $ANDROID_SDK_ROOT/cmdline-tools/NOTICE.txt $ANDROID_SDK_ROOT/cmdline-tools/latest \   
    && sdkmanager --sdk_root=${ANDROID_SDK_ROOT} --update \
    && echo y | sdkmanager --sdk_root=${ANDROID_SDK_ROOT} "platforms;android-${ANDROID_COMPILE_SDK}" "build-tools;${ANDROID_BUILD_TOOLS}" 

CMD ["/bin/bash"]
