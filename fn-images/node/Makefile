
NODE_VERSION := 14.17.0
REPO := leanmu/node

.PHONY: build push

build:
	docker build --build-arg VERSION=$(NODE_VERSION) -t $(REPO):$(NODE_VERSION) -t $(REPO):latest .

push:
	docker push $(REPO):latest
	docker push $(REPO):$(NODE_VERSION)
