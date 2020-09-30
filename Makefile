PREFIX:=/

.PHONY: install

PROGRAMS = \
	programs/call-audio \

all: $(PROGRAMS)

programs/call-audio: programs/call-audio.c
	gcc -o programs/call-audio programs/call-audio.c

clean:
	rm programs/call-audio

install: $(PROGRAMS)
	cp programs/call-audio $(PREFIX)/usr/bin
