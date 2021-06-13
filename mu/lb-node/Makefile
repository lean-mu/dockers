
BRANCH := master
REPO := leanmu/lbnode
VERSION := 1.0

.PHONY: build build-nocache push

build:
	docker build --build-arg BRANCH=$(BRANCH) -t $(REPO):$(VERSION)  -t $(REPO):latest .

build-nocache:
	docker build --no-cache --build-arg BRANCH=$(BRANCH) -t $(REPO):$(VERSION)  -t $(REPO):latest .
	
push:
	docker push $(REPO):latest
	docker push $(REPO):$(VERSION)


