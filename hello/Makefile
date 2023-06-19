all:
	as   -g main.s    -o hello.o
	gcc  -g main_c.s  -o hello_c

	ld  -g hello.o   -o hello

clean:
	rm ./hello
	rm ./hello_c
	rm ./*.o


