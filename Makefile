all: build

build:
	@docker build --tag=threew82/postgresql .

release: build
	@docker build --tag=threew82/postgresql:$(shell cat VERSION) .
