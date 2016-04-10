CC = gcc
CFLAGS = -Wall -Werror -O2

testapp: main.c feature1.c feature2.c feature3.c | feature1.h feature2.h feature3.h
	$(CC) $(CFLAGS) -o $@ $^

.PHONY: clean
clean:
	rm -rf *.o testapp
