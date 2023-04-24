CC=gcc
CFLAGS=-Wall
SRC = manager.c product.c market.c
OBJ = $(SRC:.c=.o)
MARKET = market

$(MARKET): $(OBJ)
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(MARKET)


