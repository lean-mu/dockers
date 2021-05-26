
BRANCH := master
REPO := leanmu/mu/runnernode

build:
	docker build --build-arg VERSION=$(NODE_VERSION) -t $(REPO):$(NODE_VERSION) -t $(REPO):latest .

push:
	docker push $(REPO):latest
	docker push $(REPO):$(NODE_VERSION)
