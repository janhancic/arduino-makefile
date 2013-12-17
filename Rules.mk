# Standard things

.SUFFIXES:
.SUFFIXES:	.c .o

all:		targets

# Subdirectories, in random order

dir		:= lib
-include		$(dir)/Rules.mk
dir		:= src
-include		$(dir)/Rules.mk

# General directory independent rules

%.o:		%.c
			$(COMP)

%:			%.o
			$(LINK)
		
%:			%.c
			$(COMPLINK)
		
# The variables TGT_*, CLEAN and CMD_INST* may be added to by the Makefile
# fragments in the various subdirectories.

.PHONY:		targets
targets:	$(TGT_UP) $(TGT_SBIN) $(TGT_ETC) $(TGT_LIB)

#.PHONY:		clean
#clean:
#			rm -rf $(CLEAN)
			
.PHONY:		upload
upload: 	targets
			$(UPLOAD) -Uflash:w:$(TGT_UP)
