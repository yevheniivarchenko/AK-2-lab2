CC=g++
CFLAGS=-g -Wall

all: main

main: main.o calculator.o
	$(CC) $(CFLAGS) main.o calculator.o -o main

main.o: main.cpp
	$(CC) $(CFLAGS) -c $<

calculator.a: calculator.o
	$(AR) $(ARFLAGS) $@ $^

calculator.o: calculator.cpp calculator.h
	$(CC) $(CFLAGS) -c $<

clean:
	rm main *.o calculator.a