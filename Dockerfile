FROM adoptopenjdk/openjdk8:alpine-slim

ENV COMMAND_LINE_TOOLS_VERSION="6609375"

ENV BUILD_TOOLS_VERSION="29.0.2"
ENV TARGET_SDK=29

ENV ANDROID_SDK_ROOT="/sdk"
ENV ANDROID_HOME="${ANDROID_SDK_ROOT}"
ENV PATH="$PATH:${ANDROID_SDK_ROOT}/tools:${ANDROID_SDK_ROOT}/tools/bin:${ANDROID_SDK_ROOT}/platform-tools"

COPY *.sh $PWD/

RUN ./install_common_packages.sh
RUN ./install_command_line_tools.sh
RUN ./install_android_build_tools.sh

RUN rm -v *.sh