include Makefile.docker
include Makefile.submodules

network = "ratelimit_default"

build:
	@echo "Start to build..."
	make update-submodules
.PHONY: build

create-network:
	make create-docker-network
.PHONY: create-network

remove-network:
	make remove-docker-network
.PHONY: remove-network
