TOPTARGETS := all build push

SUBDIRS := $(wildcard fn-images/*/.) $(wildcard mu/*/.) "tooling-images/nats/."

$(TOPTARGETS): $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: $(TOPTARGETS) $(SUBDIRS)