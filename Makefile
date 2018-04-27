all: build

build:
	@docker build --tag=threew82/postgres .

release: build
	@docker build --tag=threew82/postgres:$(shell cat VERSION) .
