STYLE=xcode

CSSSRC = $(wildcard src/*.css)
ALLSRC = $(wildcard src/*.*)

# Contains three sets of files:
# 1. RTF output of css files
# 2. RTF output of scss files
# 3. RTF output of scss files that were compiled
RTF = $(patsubst src/%, rtf/%.rtf, $(ALLSRC)) $(patsubst src/%.scss, rtf/%.css.rtf, $(SCSSSRC))

all: $(RTF)

src/%.css: src/%.scss
	sass --sourcemap=none $< $@

rtf/%.scss.rtf: src/%.scss
	pygmentize -O style=$(STYLE) -o $@ $<

rtf/%.css.rtf: src/%.css
	pygmentize -O style=$(STYLE) -o $@ $<

rtf/%.sh.rtf: src/%.sh
	pygmentize -O style=$(STYLE) -o $@ $<

clean:
	rm rtf/*.rtf


install:
	sudo apt-get install fonts-roboto
