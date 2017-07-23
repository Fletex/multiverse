MY_CC ?= gcc
CC = $(MY_CC)
CFLAGS = -gdwarf-2 -Wall -Wextra -O2 -std=c99 -fno-common
ALLPRODUCTS+=libmultiverse.a

all: libmultiverse.a

include ../common.mk

libmultiverse.a: $(OBJECTS)
	ar rcs $@ $^
