SHELL := /bin/bash -o pipefail

export ROOT := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
export BUILD := ${ROOT}/build


ci.clean:
	cd $(ROOT) && rm -fr $(BUILD)

ci.conan:
	cd $(ROOT) && mkdir -p $(BUILD) && \
	conan install . --install-folder=$(BUILD) --build=missing

ci.build:
	cd $(ROOT) && mkdir -p $(BUILD) && \
	conan install . --install-folder=$(BUILD)/cmake-build-release --build=missing && \
	cmake . -DCMAKE_TOOLCHAIN_FILE=$(BUILD)/cmake-build-release/conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release -B $(BUILD) && \
	cmake --build $(BUILD)

ci.rebuild:
	make ci.clean && make ci.build

ci.test:
	cd $(ROOT) && cd $(BUILD)/test && ctest -j 12 --verbose

ci.all:
	make ci.rebuild && make ci.test