# If you change the name of this executable, 
# please also update your .vscode/launch.json file
OUTPUT_FILENAME = hello

all: run

.PHONY: clean
clean:
	rm -rf dist

pre-build: clean
	mkdir dist

build: pre-build
	odin build src -out:dist/$(OUTPUT_FILENAME)

build-debug: pre-build
	odin build src -out:dist/$(OUTPUT_FILENAME) -debug

run: build
	./dist/$(OUTPUT_FILENAME)

test: pre-build
	odin test src -all-packages -out:dist/$(OUTPUT_FILENAME)

test-debug: pre-build
	odin test src -all-packages -out:dist/$(OUTPUT_FILENAME) -debug
