export ML_JIFFY_ROOT=$(readlink -f .)
export ML_ROOT=$(readlink -f 3pp/monolinux)
export ML_SOURCES=$(readlink -f 3pp)
export ML_LINUX_CONFIG=$(readlink -f app/linux-jiffy.config)
export PATH=$PATH:$ML_ROOT/bin
export PATH=/opt/arm-linux-musleabi-cross/bin:$PATH
