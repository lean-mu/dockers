
JAVA_VERSION := 1.8
REPO := leanmu/mu/java

build:
	docker build --build-arg VERSION=$(JAVA_VERSION) -t $(REPO):$(JAVA_VERSION) -t $(REPO):latest .

push:
	docker push $(REPO):latest
	docker push $(REPO):$(JAVA_VERSION)
