cmake -DWITH_FFMPEG=OFF -DBUILD_opencv_ts=0 -DWITH_TIFF=OFF .
CORES=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || sysctl -n hw.ncpu)
make -j$CORES verbose=2 

