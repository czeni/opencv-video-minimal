# OpenCV 4.1.1 with Python3.7.3 and video support

[![](https://img.shields.io/docker/build/czentye/opencv-video-minimal.svg?style=popout)](https://hub.docker.com/r/czentye/opencv-video-minimal)
[![](https://img.shields.io/docker/pulls/czentye/opencv-video-minimal.svg?style=popout)](https://hub.docker.com/r/czentye/opencv-video-minimal)
[![](https://img.shields.io/microbadger/image-size/czentye%2Fopencv-video-minimal.svg?style=popout)](https://hub.docker.com/r/czentye/opencv-video-minimal)

János Czentye, HSNLab@BME

2019 August

### Description

This repository provides a Dockerfile for building an image for the latest 
OpenCV with Python3.7 bindings and video support for video processing.

The Docker image is based on the latest Alpine Linux 3.10 for a minimum size 
image (~217MB). It uses Alpine packages from testing and community repos.

https://alpinelinux.org

The OpenCV lib is compiled from source and contains no contrib modules.

https://github.com/opencv/opencv/releases

Older versions can be found under different tags.

### Configuration

The OpenCV compiled from source with the following configurations:

```text
-- General configuration for OpenCV 4.1.0 =====================================
--   Version control:               unknown
-- 
--   Platform:
--     Timestamp:                   2019-06-24T08:33:20Z
--     Host:                        Linux 4.18.0-22-generic x86_64
--     CMake:                       3.14.5
--     CMake generator:             Unix Makefiles
--     CMake build tool:            /usr/bin/make
--     Configuration:               RELEASE
-- 
--   C/C++:
--     Built as dynamic libs?:      YES
--     C++ Compiler:                /usr/bin/clang++  (ver 8.0.0)
--     Linker flags (Release):      -Wl,--gc-sections  
--     Linker flags (Debug):        -Wl,--gc-sections  
--     ccache:                      NO
--     Precompiled headers:         NO
--     Extra dependencies:          dl m pthread rt
--     3rdparty dependencies:
-- 
--   OpenCV modules:
--     To be built:                 calib3d core dnn features2d flann gapi highgui imgcodecs imgproc ml objdetect photo python3 stitching video videoio
--     Disabled:                    world
--     Disabled by dependency:      -
--     Unavailable:                 java js python2 ts
--     Applications:                apps
--     Documentation:               NO
--     Non-free algorithms:         NO
-- 
--   GUI: 
--     GTK+:                        NO
--     VTK support:                 NO
-- 
--   Media I/O: 
--     ZLib:                        /lib/libz.so (ver 1.2.11)
--     JPEG:                        /usr/lib/libjpeg.so (ver 80)
--     WEBP:                        /usr/lib/libwebp.so (ver encoder: 0x020e)
--     PNG:                         /usr/lib/libpng.so (ver 1.6.37)
--     TIFF:                        /usr/lib/libtiff.so (ver 42 / 4.0.10)
--     JPEG 2000:                   /usr/lib/libjasper.so (ver 2.0.16)
--     OpenEXR:                     /usr/lib/libImath.so /usr/lib/libIlmImf.so /usr/lib/libIex.so /usr/lib/libHalf.so /usr/lib/libIlmThread.so (ver 2.2.1)
--     HDR:                         YES
--     SUNRASTER:                   YES
--     PXM:                         YES
--     PFM:                         YES
-- 
--   Video I/O:
--     FFMPEG:                      YES
--       avcodec:                   YES (58.35.100)
--       avformat:                  YES (58.20.100)
--       avutil:                    YES (56.22.100)
--       swscale:                   YES (5.3.100)
--       avresample:                YES (4.0.0)
--     GStreamer:                   YES (1.16.0)
--     v4l/v4l2:                    YES (linux/videodev2.h)
--     gPhoto2:                     YES
-- 
--   Parallel framework:            TBB (ver 4.4 interface 9004)
-- 
--   Trace:                         YES (with Intel ITT)
-- 
--   Other third-party libraries:
--     Lapack:                      YES (/usr/lib/libopenblas.so)
--     Eigen:                       NO
--     Custom HAL:                  NO
--     Protobuf:                    build (3.5.1)
-- 
--   OpenCL:                        YES (no extra features)
--     Include path:                /tmp/opencv-4.1.0/3rdparty/include/opencl/1.2
--     Link libraries:              Dynamic load
-- 
--   Python 3:
--     Interpreter:                 /usr/bin/python3 (ver 3.7.3)
--     Libraries:                   /usr/lib/libpython3.so (ver 3.7.3)
--     numpy:                       /usr/lib/python3.7/site-packages/numpy/core/include (ver 1.16.4)
--     install path:                lib/python3.7/site-packages/cv2/python-3.7
-- 
--   Python (for build):            /usr/bin/python3
-- 
--   Java:                          
--     ant:                         NO
--     JNI:                         NO
--     Java wrappers:               NO
--     Java tests:                  NO
-- 
--   Install to:                    /usr
-- -----------------------------------------------------------------
```

### Download

To get the image use ``sudo docker pull czentye/opencv-video-minimal``

### Run

To run Python with Matplotlib use the following command ``sudo docker run -ti czentye/opencv-video-minimal python``

### License

Licensed under MIT license, see LICENSE file.
