CFLAGS=-Werror -Wall -std=c++2a
CC=g++
SRCS=$(wildcard src/*.cpp)
LIBS=$(wildcard src/*.hpp)
OBJS=$(SRCS:.cpp=.o)

%.o: %.c $(LIBS)
	$(CC) $(CFLAGS) -c -o $@ $<

tetris: $(OBJS)
	$(CC) $(CFLAGS) -o $@.exe $(OBJS)
