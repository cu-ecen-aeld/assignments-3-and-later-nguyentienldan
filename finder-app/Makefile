CROSS_COMPILE =

writer: writer.c
	$(CROSS_COMPILE)gcc -Wall -o $@ $^

clean:
	if test -f writer; then rm writer; fi
	
.phony: clean