# OpenCV 3.4.2 with Python3.6.8 and video support

2019 March

### Description

This repository provides a Dockerfile for building an image for the latest 
OpenCV with Python3.6 bindings and video support for video processing.

The Docker image is based on the latest Alpine Linux 3.9 for a minimum size 
image (~217MB). It uses Alpine packages from testing and community repos.

The OpenCV lib is compiled from source and contains no contrib modules.

### Configuration

The OpenCV compiled from source with the following configurations:

```text
-- General configuration for OpenCV 3.4.2 =====================================
-- 
--   OpenCV modules:
--     To be built:                 calib3d core dnn features2d flann highgui imgcodecs imgproc java_bindings_generator ml objdetect photo python3 python_bindings_generator shape stitching superres video videoio videostab
--     Disabled:                    js world
--     Disabled by dependency:      -
--     Unavailable:                 cudaarithm cudabgsegm cudacodec cudafeatures2d cudafilters cudaimgproc cudalegacy cudaobjdetect cudaoptflow cudastereo cudawarping cudev java python2 ts viz
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
--     PNG:                         /usr/lib/libpng.so (ver 1.6.34)
--     TIFF:                        /usr/lib/libtiff.so (ver 42 / 4.0.9)
--     JPEG 2000:                   /usr/lib/libjasper.so (ver 2.0.14)
--     OpenEXR:                     /usr/lib/libImath.so /usr/lib/libIlmImf.so /usr/lib/libIex.so /usr/lib/libHalf.so /usr/lib/libIlmThread.so (ver 2.2.1)
--     HDR:                         YES
--     SUNRASTER:                   YES
--     PXM:                         YES
-- 
--   Video I/O:
--     FFMPEG:                      YES
--       avcodec:                   YES (ver 57.107.100)
--       avformat:                  YES (ver 57.83.100)
--       avutil:                    YES (ver 55.78.100)
--       swscale:                   YES (ver 4.8.100)
--       avresample:                YES (ver 3.7.0)
--     GStreamer:                   
--       base:                      YES (ver 1.14.0)
--       video:                     YES (ver 1.14.0)
--       app:                       YES (ver 1.14.0)
--       riff:                      YES (ver 1.14.0)
--       pbutils:                   YES (ver 1.14.0)
--     libv4l/libv4l2:              NO
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
--     Include path:                /tmp/opencv-3.4.2/3rdparty/include/opencl/1.2
--     Link libraries:              Dynamic load
-- 
--   Python 3:
--     Interpreter:                 /usr/bin/python3 (ver 3.6.4)
--     Libraries:                   /usr/lib/libpython3.so (ver 3.6.4)
--     numpy:                       /usr/lib/python3.6/site-packages/numpy/core/include (ver 1.14.3)
--     packages path:               lib/python3.6/site-packages
-- 
--   Python (for build):            /usr/bin/python3
-- 
--   Java:                          
--     ant:                         NO
--     JNI:                         NO
--     Java wrappers:               NO
--     Java tests:                  NO
-- 
--   Matlab:                        NO
-- 
--   Install to:                    /usr
-- -----------------------------------------------------------------
```

### Download

To get the image use ``sudo docker pull czentye/opencv-video-minimal``

