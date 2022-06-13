.PHONY: all create-release updete-schemas
all:

install-extension:
	cp -r . ~/.local/share/gnome-shell/extensions/Short_Memo@kusabashira
	gnome-extensions enable Short_Memo@kusabashira

uninstall-extension:
	rm -rf ~/.local/share/gnome-shell/extensions/Short_Memo@kusabashira
	gnome-extensions disable Short_Memo@kusabashira

create-release:
	zip -r Short_Memo.zip ./ -x \
		'*.git*' 'README.md' 'COPYING' 'Makefile'

updete-schemas:
	glib-compile-schemas schemas
