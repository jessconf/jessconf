# Set an output prefix, which is the local directory if not specified
.PHONY: clean all build serve

DOCKER_IMAGE=jessconf/jessconf

PORT := 1337

all: serve

build:
	docker build --rm --force-rm -t $(DOCKER_IMAGE) .

serve: build
	docker run --rm -it \
		-v $(CURDIR)/:/usr/src/jessconf \
		--workdir /usr/src/jessconf \
		-p $(PORT):$(PORT)\
		--name jessconf \
		$(DOCKER_IMAGE) hugo server -w --port=$(PORT) --bind=0.0.0.0

clean:
	rm -rf public
