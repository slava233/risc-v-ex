all:
	docker run --rm --mount type=bind,source=`pwd`,target=/build --user `id -u`:`id -g` krinkin/riscv64-crossbuild

clean:
	rm ./*.o
	rm ./a.out

crossbuild:
	as -g -march=rv64i single-cycle.s -o single-cycle.o
	ld -g single-cycle.o
