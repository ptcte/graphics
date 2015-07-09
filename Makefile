#Makefile for openGL/graphics

#include /usr/include/make/commondefs

LDLIBS  = -lglut -lGLU -lGL -lXext -lX11 -lm
CFILES  = abgr.c accum.c bitmap1.c bitmap2.c blendeq.c blendxor.c copy.c copytex.c depth.c eval.c fog.c line.c logo.c nurb.c olympic.c packedpix.c point.c prim.c quad.c select.c shell.c sphere.c star.c stencil.c stretch.c surfgrid.c teapot.c texobj.c texproxy.c texsubimage.c texture.c tri.c twotextures.c varray.c wave.c

TARGETS = $(CFILES:.c=)

default	 : $(TARGETS)

#include $(COMMONRULES)

blendeq	: font.o
	$(CC) $(CFLAGS) -o $@ $@.c font.o $(LDLIBS)

copy	: rgb.o
	$(CC) $(CFLAGS) -o $@ $@.c rgb.o $(LDLIBS)

copytex	: rgb.o
	$(CC) $(CFLAGS) -o $@ $@.c rgb.o $(LDLIBS)

packedpix: rgb.o
	$(CC) $(CFLAGS) -o $@ $@.c rgb.o $(LDLIBS)

quad	: rgb.o
	$(CC) $(CFLAGS) -o $@ $@.c rgb.o $(LDLIBS)

sphere	: rgb.o
	$(CC) $(CFLAGS) -o $@ $@.c rgb.o $(LDLIBS)

stretch	: rgb.o
	$(CC) $(CFLAGS) -o $@ $@.c rgb.o $(LDLIBS)

texobj	: rgb.o
	$(CC) $(CFLAGS) -o $@ $@.c rgb.o $(LDLIBS)

texsubimage: rgb.o
	$(CC) $(CFLAGS) -o $@ $@.c rgb.o $(LDLIBS)

texture	: rgb.o
	$(CC) $(CFLAGS) -o $@ $@.c rgb.o $(LDLIBS)

twotextures: rgb.o
	$(CC) $(CFLAGS) -o $@ $@.c rgb.o $(LDLIBS)

# dependencies

