CC = gcc
TARGET = market.out
OBJS = market.o manager.o product.o

CFLAGS = -Wall

all : $(TARGET)

$(TARGET) : $(OBJS) 
	$(CC) $(CFLAGS) -o $@ $^

.c.o : 
	$(CC) $(CFLAGS) -c -o $@ $<

clean : 
	rm -f $(OBJS) $(TARGET)
