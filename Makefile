TOPTARGETS := all build push

SUBDIRS := $(wildcard fn-images/*/.) $(wildcard mu/*/.) "tooling-images/nats/." "tooling-images/grafana/.

$(TOPTARGETS): $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: $(TOPTARGETS) $(SUBDIRS)