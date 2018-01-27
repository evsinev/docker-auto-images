FROM openjdk:8-jdk

ENV \
  ANDROID_COMPILE_SDK "25" \
  ANDROID_BUILD_TOOLS "25.0.2" \
  ANDROID_SDK_TOOLS "3859397" \
  ANDROID_HOME "/opt/android-sdk-linux" \
  PATH "$PATH:$ANDROID_HOME/platform-tools"

RUN env
RUN echo 'deb http://deb.debian.org/debian sid main' >> /etc/apt/sources.list
RUN apt-get --quiet update --yes
RUN apt-get --quiet install --yes wget tar unzip lib32stdc++6 lib32z1
RUN apt-get -qq -t sid install -y gettext
RUN wget --output-document=sdk-tools-linux.zip https://dl.google.com/android/repository/sdk-tools-linux-${ANDROID_SDK_TOOLS}.zip
RUN cd /opt
RUN unzip -q sdk-tools-linux.zip -d android-sdk-linux
RUN echo y; echo y; echo y; echo y; echo y; echo y; | $ANDROID_HOME/tools/bin/sdkmanager --licenses

RUN $ANDROID_HOME/tools/bin/sdkmanager --verbose \
    "platform-tools" \
    "build-tools;$ANDROID_BUILD_TOOLS" \
    "platforms;android-$ANDROID_COMPILE_SDK" \
    "extras;android;m2repository" \
    "extras;google;google_play_services" \
    "extras;google;m2repository"
