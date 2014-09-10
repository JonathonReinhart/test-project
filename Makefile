CC = gcc
CFLAGS = -Wall -Werror -O2

testapp: main.c
	$(CC) $(CFLAGS) -o $@ $^

.PHONY: clean
clean:
	rm -rf *.o testapp
