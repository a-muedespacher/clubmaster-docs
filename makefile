all: build

build:
	asciidoc -f conf/xhtml11.conf -a stylesdir="../css" -a scriptsdir="../js" -a linkcss -b xhtml11 -a toc -a theme=flask user-guide/README
	asciidoc -f conf/xhtml11.conf -a stylesdir="../css" -a scriptsdir="../js" -a linkcss -b xhtml11 -a toc -a theme=flask development/README

clean:
	rm -rf user-guide/README.html
	rm -rf development/README.html
