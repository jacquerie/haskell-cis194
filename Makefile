ROOT="http://www.seas.upenn.edu/~cis194"

all: homeworks lectures

clean:
	rm -f 01/01-intro.html 01/01-intro.pdf
	rm -f 02/02-lists.html 02/02-lists.pdf
	rm -f 03/03-ADTs.html 03/03-ADTs.pdf
	rm -f 04/04-typeclasses.html 04/04-typeclasses.pdf
	rm -f 05/05-IO.html 05/05-IO.pdf
	rm -f 06/06-laziness.html 06/06-laziness.pdf
	rm -f 07/07-monads.html 07/07-monads.pdf
	rm -f 08/08-monads-ii.html
	rm -f 09/09-testing.html
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

03/03-ADTs.pdf:
	curl -o $@ $(ROOT)/hw/03-ADTs.pdf

04/04-typeclasses.pdf:
	curl -o $@ $(ROOT)/hw/04-typeclasses.pdf

05/05-IO.pdf:
	curl -o $@ $(ROOT)/hw/05-IO.pdf

06/06-laziness.pdf:
	curl -o $@ $(ROOT)/hw/06-laziness.pdf

07/07-monads.pdf:
	curl -o $@ $(ROOT)/hw/07-monads.pdf

homeworks: 01/01-intro.pdf 02/02-lists.pdf 03/03-ADTs.pdf 04/04-typeclasses.pdf 05/05-IO.pdf 06/06-laziness.pdf 07/07-monads.pdf

01/01-intro.html:
	curl -o $@ $(ROOT)/lectures/01-intro.html

02/02-lists.html:
	curl -o $@ $(ROOT)/lectures/02-lists.html

03/03-ADTs.html:
	curl -o $@ $(ROOT)/lectures/03-ADTs.html

04/04-typeclasses.html:
	curl -o $@ $(ROOT)/lectures/04-typeclasses.html

05/05-IO.html:
	curl -o $@ $(ROOT)/lectures/05-IO.html

06/06-laziness.html:
	curl -o $@ $(ROOT)/lectures/06-laziness.html

07/07-monads.html:
	curl -o $@ $(ROOT)/lectures/07-monads.html

08/08-monads-ii.html:
	curl -o $@ $(ROOT)/lectures/08-monads-ii.html

09/09-testing.html:
	curl -o $@ $(ROOT)/lectures/09-testing.html

lectures: css/style.css 01/01-intro.html 02/02-lists.html 03/03-ADTs.html 04/04-typeclasses.html 05/05-IO.html 06/06-laziness.html 07/07-monads.html 08/08-monads-ii.html 09/09-testing.html

.PHONY: all homeworks lectures
