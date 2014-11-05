# Possible Targets:	all clean Debug cleanDebug Release cleanRelease

##############################################################################################
# Settings
#

# General settings
	# See $(GFXLIB)/tools/gmake_scripts/readme.txt for the list of variables
	OPT_OS					= chibios
	OPT_THUMB				= yes
	OPT_LINK_OPTIMIZE		= yes
	OPT_CPU					= stm32m4

# uGFX settings
	# See $(GFXLIB)/tools/gmake_scripts/library_ugfx.mk for the list of variables
	GFXLIB					= contrib/ugfx
	GFXBOARD				= STM32F429i-Discovery
	#GFXDEMO					= modules/gdisp/arcsectors
	GFXDEMO					= modules/gdisp/basics
	#GFXDEMO					= modules/gdisp/circles
	#GFXDEMO					= modules/gdisp/fonts
	#GFXDEMO					= modules/gdisp/fonts_cyrillic
	#GFXDEMO					= modules/gdisp/images
	#GFXDEMO					= modules/gdisp/images_animated
	#GFXDEMO					= modules/gdisp/multiple_displays
	#GFXDEMO					= modules/gdisp/streaming

# ChibiOS settings
ifeq ($(OPT_OS),chibios)
	# See $(GFXLIB)/tools/gmake_scripts/os_chibios.mk for the list of variables
	CHIBIOS				= contrib/ChibiOS-RT-2.x
	CHIBIOS_BOARD		= ST_STM32F429I_DISCOVERY
	CHIBIOS_PLATFORM	= STM32F4xx
	CHIBIOS_PORT		= GCC/ARMCMx/STM32F4xx
	CHIBIOS_LDSCRIPT	= STM32F407xG.ld
endif

##############################################################################################
# Set these for your project
#

ARCH     = arm-none-eabi-
SRCFLAGS = -ggdb -O0
CFLAGS   =
CXXFLAGS = -fno-rtti
ASFLAGS  =
LDFLAGS  =

SRC      = 
OBJS     =
DEFS     =
LIBS     =
INCPATH  = 
LIBPATH  =
LDSCRIPT = 

##############################################################################################
# These should be at the end
#
install:
	st-flash write $(BUILDDIR)/$(PROJECT).bin  0x8000000

include $(GFXLIB)/tools/gmake_scripts/library_ugfx.mk
include $(GFXLIB)/tools/gmake_scripts/os_$(OPT_OS).mk
include $(GFXLIB)/tools/gmake_scripts/compiler_gcc.mk
# *** EOF ***
