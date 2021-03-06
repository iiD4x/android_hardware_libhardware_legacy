# Copyright 2006 The Android Open Source Project

## Must point to a source file that implements the sendit() function
ifneq ($(BOARD_HAS_VIBRATOR_IMPLEMENTATION),)
    LOCAL_SRC_FILES += $(BOARD_HAS_VIBRATOR_IMPLEMENTATION)
    LOCAL_CFLAGS += -DUSE_ALTERNATIVE_VIBRATOR
else
    LOCAL_SRC_FILES += vibrator/vibrator.c
endif
