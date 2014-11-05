# ChibiOS + uGFX demo for STM32F429-Discovery

This repository is a self-contained demo for STM32F429-Discovery using http://www.chibios.org/ RTOS and http://ugfx.org/ graphics library.

NOTE: This demo was written by the uGFX team and is part of the uGFX distribution[1]. I have just shaped it into this self-contained repository. For ChibiOS and uGFX source code licenses please see their web pages.

[1] https://bitbucket.org/Tectu/ugfx/commits/2284e5e9cf2d22e485df1ac102cb58c5d649efcb

# Prerequisites

 - working GNU GCC for ARM (`arm-none-eabi-gcc`)
 - working `st-flash` tool
 - GNU make

# Fun

```
# git clone --depth=1 https://github.com/mprymek/ChibiOS-uGFX
# cd ChibiOS-uGFX
# git submodule init
# git submodule update
# make all install
# echo 'Look at your STM32F429-Discovery!'
```

# More Fun!
Edit `Makefile`, uncomment other `GFXDEMO` line and run `make clean all install`.

# Even More Fun!
Say thank you to the admirable ChibiOS and uGFX developers ;)
