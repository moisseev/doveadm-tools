program = doveadm-tools
version = "0.0.1"

PREFIX ?= /usr/local
INSTALL = /usr/bin/install -c

bindir  = $(PREFIX)/bin

release = $(program)-$(version)
src     = bin \
          Makefile README.md LICENSE

cleanfiles = $(release).tgz \
             $(release).tgz.md5

all:

install:
	$(INSTALL) -d -m 0755 $(DESTDIR)$(bindir) || exit 1;
	cd bin && $(INSTALL) -m 0555 * $(DESTDIR)$(bindir) || exit 1;

uninstall:
	-@cd bin && for file in *; do \
		if [ -f $$file ]; then rm $(DESTDIR)$(bindir)/$$file; fi \
	done

release:
	@echo Preparing version $(version); \
	tar -czvf $(release).tgz --uid=0 --gid=0 -s",^,$(release)/," $(src); \
	md5 $(release).tgz > $(release).tgz.md5; \
	chmod 644 $(release).tgz $(release).tgz.md5

clean:
	@for file in $(cleanfiles); do \
		if [ -f $$file ]; then rm $$file; fi \
	done
