BRANCH := master
REPO := leanmu/nats

.PHONY: build push

build:
	docker build --build-arg BRANCH=$(BRANCH) -t $(REPO):latest .

push:
	docker push $(REPO):latest