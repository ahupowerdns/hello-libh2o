CXXFLAGS:=-std=gnu++17 -Wall -O2 -MMD -MP -ggdb 
CFLAGS:= -Wall -O2 -MMD -MP -ggdb 

PROGRAMS = simple

all: $(PROGRAMS)

clean:
	rm -f *~ *.o *.d test $(PROGRAMS)

-include *.d

simple: simple.o
	g++ -L/usr/local/lib/ -std=gnu++14 $^ -o $@ -pthread -lh2o-evloop -lz -lssl -lcrypto

