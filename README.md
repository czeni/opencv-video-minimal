# OpenCV 4.0.1 with Python3.6.8 and video support

[![](https://img.shields.io/docker/build/czentye/opencv-video-minimal.svg?style=popout)](https://hub.docker.com/r/czentye/opencv-video-minimal)
[![](https://img.shields.io/docker/pulls/czentye/opencv-video-minimal.svg?style=popout)](https://hub.docker.com/r/czentye/opencv-video-minimal)
[![](https://img.shields.io/microbadger/image-size/czentye%2Fopencv-video-minimal.svg?style=popout)](https://hub.docker.com/r/czentye/opencv-video-minimal)

János Czentye, HSNLab@BME

2019 April

### Description

This repository provides a Dockerfile for building an image for the latest 
OpenCV with Python3.6 bindings and video support for video processing.

The Docker image is based on the latest Alpine Linux 3.9.3 for a minimum size 
image (~217MB). It uses Alpine packages from testing and community repos.

https://alpinelinux.org

The OpenCV lib is compiled from source and contains no contrib modules.

https://github.com/opencv/opencv/releases

Older versions can be found under different tags.

### Configuration

The OpenCV compiled from source with the following configurations:

```text
-- General configuration for OpenCV 4.0.1 =====================================
-- 
--   OpenCV modules:
--     To be built:                 calib3d core dnn features2d flann gapi highgui imgcodecs imgproc java_bindings_generator ml objdetect photo python3 python_bindings_generator stitching video videoio
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
--     PNG:                         /usr/lib/libpng.so (ver 1.6.35)
--     TIFF:                        /usr/lib/libtiff.so (ver 42 / 4.0.10)
--     JPEG 2000:                   /usr/lib/libjasper.so (ver 2.0.14)
--     OpenEXR:                     /usr/lib/libImath.so /usr/lib/libIlmImf.so /usr/lib/libIex.so /usr/lib/libHalf.so /usr/lib/libIlmThread.so (ver 2.2.1)
--     HDR:                         YES
--     SUNRASTER:                   YES
--     PXM:                         YES
--     PFM:                         YES
-- 
--   Video I/O:
--     FFMPEG:                      YES
--       avcodec:                   YES (ver 58.18.100)
--       avformat:                  YES (ver 58.12.100)
--       avutil:                    YES (ver 56.14.100)
--       swscale:                   YES (ver 5.1.100)
--       avresample:                YES (ver 4.0.0)
--     GStreamer:
--       base:                      YES (ver 1.14.4)
--       video:                     YES (ver 1.14.4)
--       app:                       YES (ver 1.14.4)
--       riff:                      YES (ver 1.14.4)
--       pbutils:                   YES (ver 1.14.4)
--     v4l/v4l2:                    linux/videodev2.h
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
--     Include path:                /tmp/opencv-4.0.1/3rdparty/include/opencl/1.2
--     Link libraries:              Dynamic load
-- 
--   Python 3:
--     Interpreter:                 /usr/bin/python3 (ver 3.6.8)
--     Libraries:                   /usr/lib/libpython3.so (ver 3.6.8)
--     numpy:                       /usr/lib/python3.6/site-packages/numpy/core/include (ver 1.16.2)
--     install path:                lib/python3.6/site-packages/cv2/python-3.6
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
