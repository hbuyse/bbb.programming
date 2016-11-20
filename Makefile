# Verbosity
V            ?= 0
ifeq ($(V),1)
    VERBOSE =
else
    VERBOSE = @
endif


all: gpio


.PHONY: gpio
gpio:
    $(VERBOSE) $(MAKE) -C $@


clean:
    $(VERBOSE) $(MAKE) -C ./gpio clean


distclean:
    $(VERBOSE) $(MAKE) -C ./gpio distclean


mrproper:
    $(VERBOSE) $(MAKE) -C ./gpio mrproper
