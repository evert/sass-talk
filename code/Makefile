# Space separated
PATTERNS=*.css

code:
	(cd src; find -name '$(PATTERNS)' ) | xargs -n1 -Ifoo pygmentize -o rtf/foo.rtf src/foo

install:
	sudo apt-get install fonts-roboto
