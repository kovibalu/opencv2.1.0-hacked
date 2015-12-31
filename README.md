# opencv2.1.0-hacked

This opencv is modified so it compiles on Ubuntu 14.04. It skips some functionality like v4l, ffmpeg.

# The hacks

Final cmake call: "cmake -DWITH_FFMPEG=OFF -DBUILD_opencv_ts=0 -DWITH_TIFF=OFF ."

1) Compilation error fix 1: http://stackoverflow.com/questions/9837555/installing-opencv2-1-on-ubuntu-gives-error
2) Tests don't compile: 
	- Workaround: don't build tests module: run cmake with -DBUILD_opencv_ts=0
	- http://stackoverflow.com/questions/31366995/cannot-compile-opencv
3) Add "#include <unistd.h>" to "tests/cxcore/src/aio.cpp", "tests/ml/src/slmltests.cpp", "src/highgui/loadsave.cpp" and "tests/cv/src/anearestneighbors.cpp" (see: http://ipwithopencv.blogspot.com/)
4) skip using ffmpeg, because it didn't compile: "cmake -DWITH_FFMPEG=OFF ." (see: http://askubuntu.com/questions/396203/error-when-installing-opencv-2-1)
5) Skip WITH_V4L (see: https://salikscodingblog.wordpress.com/2011/08/05/compiling-opencv-2-on-ubuntu/)
6) Skip using TIFF, because this version uses TIFF 4 and we would have to explicitly tell the linker to link against that. It's just easier to use "cmake -DWITH_TIFF=OFF .".
