LIBS = 
LIB_DIR =  
FLAGS = -g -lgomp -Wall -D_GNU_SOURCE -fopenmp

.PHONY: clean all

all: prod_serie prod_par1 prod_par2 prod_par3

%: %.c arqo3.c
	gcc $(FLAGS) $(LIB_DIR) -o $@ $^ $(LIBS)

clean:
	rm -f *.o *~ prod_serie prod_par1 prod_par2 prod_par3
