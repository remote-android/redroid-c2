#!/system/bin/sh

# enable codec2 only when dmabuf_heap or ion available
if [ -c /dev/dma_heap/system ] || [ -c /dev/ion ];then
    setprop debug.stagefright.c2inputsurface -1
    setprop debug.stagefright.ccodec 4
fi
