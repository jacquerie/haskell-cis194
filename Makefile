ROOT="http://www.seas.upenn.edu/~cis194"

all: homeworks lectures

clean:
	rm -f 01/01-intro.html 01/01-intro.pdf
	rm -f 02/02-lists.html 02/02-lists.pdf
	rm -f css/style.css
	rm -rf css

css:
	mkdir css

css/style.css: css
	curl -o $@ $(ROOT)/$@

01/01-intro.pdf:
	curl -o $@ $(ROOT)/hw/01-intro.pdf

02/02-lists.pdf:
	curl -o $@ $(ROOT)/hw/02-lists.pdf

homeworks: css/style.css 01/01-intro.pdf 02/02-lists.pdf

01/01-intro.html:
	curl -o $@ $(ROOT)/lectures/01-intro.html

02/02-lists.html:
	curl -o $@ $(ROOT)/lectures/02-lists.html

lectures: css/style.css 01/01-intro.html 02/02-lists.html

.PHONY: all homeworks lectures
