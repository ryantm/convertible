all:
	@echo "Please use Cabal to build this package; not make."
	./Setup.lhs configure
	./Setup.lhs build

install:
	./Setup.lhs install

clean:
	./Setup.lhs clean

test:
	./Setup.lhs configure -f buildtests
	./Setup.lhs build
	./dist/build/runtests/runtests
