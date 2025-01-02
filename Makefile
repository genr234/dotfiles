all: install

install:
	sketchybar

sketchybar:
	cp -r ~/.config/sketchybar ~/.config/sketchybarbackup
	rm -rf ~/.config/sketchybar
	cp -r sketchybar ~/.config/sketchybar

uninstall:
	rm -rf ~/.config/sketchybar
	cp -r ~/.config/sketchybarbackup ~/.config/sketchybar
