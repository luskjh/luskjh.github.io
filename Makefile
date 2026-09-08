PKGS ?= $(shell find . -maxdepth 1 -mindepth 1 -not -name '.*' -type d | sed 's|^\./||')

.PHONY: inject stow

inject:
	@find . -name '*.tpl' | while read t; do \
		op inject -i "$$t" -o "$${t%.tpl}" -f > /dev/null; \
	done

stow: inject
	@for p in $(PKGS); do \
		stow -t $(HOME) -D $$p; \
		stow -t $(HOME) --ignore='\.tpl$$' -R $$p; \
	done

