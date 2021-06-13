REPO := leanmu/go

.PHONY: build push

build:
	docker build -t $(REPO):latest .

push:
	docker push $(REPO):latest
