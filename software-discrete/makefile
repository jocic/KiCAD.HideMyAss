##########################
# COMPILATION PARAMETERS #
##########################

CHIP            = 12F675
SOURCE_FILE     = source/main.c
DIST_FILE       = dist/main.hex
OUTPUT_DIR      = dist
DEVICE_FILE     = other
OSCCAL_LOCATION = 3FF
OSCCAL_VALUE    = 3480

##################
# OUTPUT COMMAND #
##################

COMPILE:
	xc8 --chip=$(CHIP) $(SOURCE_FILE) --outdir=$(OUTPUT_DIR)

TEST:
	pk2cmd -B$(DEVICE_FILE) -PPIC$(CHIP) -I

OSCCAL:
	pk2cmd -B$(DEVICE_FILE) -PPIC$(CHIP) \
		-GP$(OSCCAL_LOCATION)-$(OSCCAL_LOCATION)

LAST_VOLTAGE:
	pk2cmd -B$(DEVICE_FILE) -PPIC$(CHIP) -GE1-2

FLASH:
	pk2cmd -B./$(DEVICE_FILE) -PPIC$(CHIP) -E -MC -MP \
		 -F./$(DIST_FILE) -U$(OSCCAL_VALUE) -A4.5 -T -R 
