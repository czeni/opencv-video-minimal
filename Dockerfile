################################################################################
##  Dockerfile to build minimal OpenCV image with Python3.6 and Video support ##
################################################################################
FROM alpine:3.7

MAINTAINER Janos Czentye <czentye@tmit.bme.hu>

ENV LANG=C.UTF-8

RUN apk add --update --no-cache \

    # Build dependencies
    build-base clang clang-dev cmake pkgconf wget openblas openblas-dev \
    linux-headers \
    # Image IO packages
    libjpeg-turbo libjpeg-turbo-dev \
    libpng libpng-dev \
    libwebp libwebp-dev \
    tiff tiff-dev \
    jasper-libs jasper-dev \
    openexr openexr-dev \

    # Video depepndencies
    ffmpeg-libs ffmpeg-dev \
    libavc1394 libavc1394-dev \
    gstreamer gstreamer-dev \
    gst-plugins-base gst-plugins-base-dev \
    libgphoto2 libgphoto2-dev && \

    apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
            --update --no-cache libtbb libtbb-dev && \

    # Python dependencies
    apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/main \
            --update --no-cache python3 python3-dev && \

    apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/community \
            --update --no-cache py-numpy py-numpy-dev && \

    # Make Python3 as default
    ln -vfs /usr/bin/python3 /usr/local/bin/python && \
    ln -vfs /usr/bin/pip3 /usr/local/bin/pip && \
    # Fix libpng path
    ln -vfs /usr/include/libpng16 /usr/include/libpng && \

    ln -vfs /usr/include/locale.h /usr/include/xlocale.h && \

    # Download OpenCV source
    cd /tmp && \
    wget https://github.com/opencv/opencv/archive/3.4.0.tar.gz && \
    tar -xvzf 3.4.0.tar.gz && \
    rm -vrf 3.4.0.tar.gz && \

    # Configure
    mkdir -vp /tmp/opencv-3.4.0/build && \
    cd /tmp/opencv-3.4.0/build && \
    cmake \

        # Compiler params
        -D CMAKE_BUILD_TYPE=RELEASE \
        -D CMAKE_C_COMPILER=/usr/bin/clang \
        -D CMAKE_CXX_COMPILER=/usr/bin/clang++ \
        -D CMAKE_INSTALL_PREFIX=/usr \

        # No examples
        -D INSTALL_PYTHON_EXAMPLES=NO \
        -D INSTALL_C_EXAMPLES=NO \

        # Support
        -D WITH_IPP=NO \
        -D WITH_1394=NO \
        -D WITH_LIBV4L=NO \
        -D WITH_V4l=YES \
        -D WITH_TBB=YES \
        -D WITH_FFMPEG=YES \
        -D WITH_GPHOTO2=YES \
        -D WITH_GSTREAMER=YES \

        # NO doc test and other bindings
        -D BUILD_DOCS=NO \
        -D BUILD_TESTS=NO \
        -D BUILD_PERF_TESTS=NO \
        -D BUILD_EXAMPLES=NO \
        -D BUILD_opencv_java=NO \
        -D BUILD_opencv_python2=NO \
        -D BUILD_ANDROID_EXAMPLES=NO \

        # Build Python3 bindings only
        -D PYTHON3_LIBRARY=`find /usr -name libpython3.so` \
        -D PYTHON_EXECUTABLE=`which python3` \
        -D PYTHON3_EXECUTABLE=`which python3` \
        -D BUILD_opencv_python3=YES .. && \

    # Build
    make -j`grep -c '^processor' /proc/cpuinfo` && \
    make install && \

    # Cleanup
    cd / && rm -vrf /tmp/opencv-3.4.0 && \
    apk del --purge build-base clang clang-dev cmake pkgconf wget openblas-dev \
                    openexr-dev gstreamer-dev gst-plugins-base-dev libgphoto2-dev \
                    libtbb-dev libjpeg-turbo-dev libpng-dev tiff-dev jasper-dev \
                    ffmpeg-dev libavc1394-dev python3-dev py-numpy-dev && \
    rm -vrf /var/cache/apk/*
