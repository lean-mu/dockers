
JAVA_VERSION := 1.8
REPO := leanmu/java

.PHONY: build push

build:
	docker build --build-arg VERSION=$(JAVA_VERSION) -t $(REPO):$(JAVA_VERSION) -t $(REPO):latest .

push:
	docker push $(REPO):latest
	docker push $(REPO):$(JAVA_VERSION)
