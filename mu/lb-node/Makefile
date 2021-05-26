
BRANCH := master
REPO := leanmu/mu/lbnode
VERSION := 1.0

build:
	docker build --build-arg BRANCH=$(BRANCH) -t $(REPO):$(VERSION)  -t $(REPO):latest .

push:
	docker push $(REPO):latest
	docker push $(REPO):$(VERSION)
