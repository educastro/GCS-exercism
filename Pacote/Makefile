prefix = /usr/local

all: src/exercism-0.1

src/exercism-0.1: src/exercism-0.1
	@echo "CFLAGS=$(CFLAGS)" | \
		fold -s -w 70 | \
		sed -e 's/^/# /'
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDCFLAGS) -o $@ $^

install: src/exercism-0.1
	install -D src/exercism-0.1 \
		$(DESTDIR)$(prefix)/bin/exercism-0.1

clean:
	-rm -f src/exercism-0.1

distclean: clean

uninstall:
	-rm -f $(DESTDIR)$(prefix)/bin/exercism-0.1

.PHONY: all install clean distclean uninstall
