CXX=g++
CXXFLAGS=-g -Wall

all: main

main: main.o triangle.o
	$(CXX) $(CXXFLAGS) main.o calculator.o -o main

main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c $<

triangle.a: triangle.o
	$(AR) $(ARFLAGS) $@ $^

triangle.o: triangle.cpp triangle.h
	$(CXX) $(CXXFLAGS) -c $<

clean:
	rm -rf main main.o triangle.a triangle.o