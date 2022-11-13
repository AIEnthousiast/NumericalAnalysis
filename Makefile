CC=gcc
CFLAGS=-W -Wall -Wextra
LDFLAGS=
EXEC=main
SRC=$(wildcard *.c)
SCR+=$(wildcard ./GaussMethod/*c)
OBJ=$(SRC:.c=.o)

all: $(EXEC)

main:  $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)

%.o : %.c
	$(CC) -o $@ -c $< $(CFLAGS)


.PHONY: clean mrproper

clean: 
	rm *.o

mrproper: clean
	rm -rf $(EXEC)


