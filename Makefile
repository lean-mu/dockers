TOPTARGETS := all build push

SUBDIRS := $(wildcard fn-images/*/.) $(wildcard mu/*/.)

$(TOPTARGETS): $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: $(TOPTARGETS) $(SUBDIRS)