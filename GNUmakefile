.DEFAULT_GOAL := build

GCP=/usr/share/gentoo-color-palette/palette.m4
BATT_NAME=$(shell ls /sys/class/power_supply | grep BAT | head -n1)

m4=m4 $(GCP) common.m4 -D BATT_NAME=$(BATT_NAME)

bdeps=xmobarrc xmobarrc2
ideps=$(addprefix $(HOME)/.,$(bdeps))

.PHONY: build
build: $(bdeps)

%: %.m4

	$(m4) $< > $@

.PHONY: install
install: $(ideps)

$(HOME)/.%: %

	install -m644 $< $@

.PHONY: clean
clean:

	$(RM) $(bdeps)
