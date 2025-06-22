ifndef CROSS_COMPILE
CC = gcc
else
CC = $(CROSS_COMPILE)gcc
endif

writer: writer.c
	$(CC) -Wall -o $@ $^

clean:
	if test -f writer; then rm writer; fi
	
.phony: clean