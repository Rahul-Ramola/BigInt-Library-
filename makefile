all: BigInt

compile:
	./BigInt

BigInt: main.o BigInt.o
	gcc main.o BigInt.o -o BigInt

main.o: main.c
	gcc -c main.c

BigInt.o: BigInt.c
	gcc -c BigInt.c

clean:
	rm -rf *o run