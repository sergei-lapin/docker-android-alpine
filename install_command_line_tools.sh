wget -q https://dl.google.com/android/repository/commandlinetools-linux-${COMMAND_LINE_TOOLS_VERSION}_latest.zip -O /tmp/tools.zip 
mkdir -p ${ANDROID_HOME}
unzip -q /tmp/tools.zip -d ${ANDROID_HOME}
rm -v /tmp/tools.zip