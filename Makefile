all: main

main: main.cpp
	g++ main.cpp -o build/main

clean:
	rm -f build/main