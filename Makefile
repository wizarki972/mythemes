all: build

build:
	@echo "PACKING FILES..."
	rm -f ./zips/themes.zip
	zip -r ./zips/themes.zip ./ -x "./zips/*" "./.git/*" "Makefile" "testing-0.2"