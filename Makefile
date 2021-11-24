PROJECT_DIR = $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
BUILD_DIR = $(PROJECT_DIR)/build

.PHONY: clean plugin1 plugin2

plugin1 plugin2:
	mkdir -p $(BUILD_DIR)
	cd $@ && go build -o $(BUILD_DIR)/$@.so -buildmode=plugin .

clean:
	rm -rf $(BUILD_DIR)
