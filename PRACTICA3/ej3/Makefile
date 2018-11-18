LIBS = 
LIB_DIR =  
FLAGS = -g -Wall -D_GNU_SOURCE

.PHONY: clean all

all: prod prodTrans

prod: prod.c arqo3.c
	gcc $(FLAGS) $(LIB_DIR) -o $@ $^ $(LIBS)

prodTrans: prodTrans.c arqo3.c
	gcc $(FLAGS) $(LIB_DIR) -o $@ $^ $(LIBS)

clean:
	rm -f *.o *~ prod prodTrans
