# Space separated
PATTERNS=*.css

#code: html/header.html
#	(cd src; find -name '$(PATTERNS)' ) | xargs -n1 -Ifoo pygmentize -o rtf/foo.rtf src/foo
#	(cd src; find -name '$(PATTERNS)' ) | xargs -n1 -Ifoo sh -c "cp html/header.html html/foo.html; pygmentize -f html src/foo >> html/foo.html"
#
#html/style.css:
#	pygmentize -f html -S monokai > html/style.css

#html/header.html: html/style.css
#	echo '<html><head><style type="text/css">' > html/header.html
#	cat html/style.css >> html/header.html
#	echo '</style></head><body>' >> html/header.html

highlight:
	(cd src; find -name '$(PATTERNS)' ) | xargs -n1 -Ifoo sh -c "highlight -O rtf src/foo > rtf/foo.rtf"

install:
	sudo apt-get install fonts-roboto highlight
