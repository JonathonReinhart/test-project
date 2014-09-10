CC = gcc
CFLAGS = -Wall -Werror -O2

testapp: main.c feature1.c | feature1.h
	$(CC) $(CFLAGS) -o $@ $^

.PHONY: clean
clean:
	rm -rf *.o testapp
