ROOT=http://www.seas.upenn.edu/~cis194/spring13

all: homeworks lectures

clean:
	rm -f 01/01-intro.html 01/01-intro.pdf
	rm -f 02/02-ADTs.html 02/02-ADTs.pdf
	rm -f 03/03-rec-poly.html 03/03-rec-poly.pdf
	rm -f 04/04-higher-order.html 04/04-higher-order.pdf
	rm -f 05/05-type-classes.html 05/05-type-classes.pdf
	rm -f 06/06-laziness.html 06/06-laziness.pdf
	rm -f 07/07-folds-monoids.html 07/07-folds-monoids.pdf
	rm -f 08/08-IO.html 08/08-IO.pdf
	rm -f 09/09-functors.html 09/09-functors.pdf
	rm -f 10/10-applicative.html 10/10-applicative.pdf
	rm -f 11/11-applicative2.html 11/11-applicative2.pdf
	rm -f 12/12-monads.html
	rm -f css/style.css
	rm -rf css

css:
	mkdir css

css/style.css: css
	curl -o $@ $(ROOT)/$@

01/01-intro.pdf:
	curl -o $@ $(ROOT)/hw/01-intro.pdf

02/02-ADTs.pdf:
	curl -o $@ $(ROOT)/hw/02-ADTs.pdf

03/03-rec-poly.pdf:
	curl -o $@ $(ROOT)/hw/03-rec-poly.pdf

04/04-higher-order.pdf:
	curl -o $@ $(ROOT)/hw/04-higher-order.pdf

05/05-type-classes.pdf:
	curl -o $@ $(ROOT)/hw/05-type-classes.pdf

06/06-laziness.pdf:
	curl -o $@ $(ROOT)/hw/06-laziness.pdf

07/07-folds-monoids.pdf:
	curl -o $@ $(ROOT)/hw/07-folds-monoids.pdf

08/08-IO.pdf:
	curl -o $@ $(ROOT)/hw/08-IO.pdf

09/09-functors.pdf:
	curl -o $@ $(ROOT)/hw/09-functors.pdf

10/10-applicative.pdf:
	curl -o $@ $(ROOT)/hw/10-applicative.pdf

11/11-applicative2.pdf:
	curl -o $@ $(ROOT)/hw/11-applicative2.pdf

12/12-monads.pdf:
	curl -o $@ $(ROOT)/hw/12-monads.pdf

homeworks: 01/01-intro.pdf 02/02-ADTs.pdf 03/03-rec-poly.pdf 04/04-higher-order.pdf 05/05-type-classes.pdf 06/06-laziness.pdf 07/07-folds-monoids.pdf 08/08-IO.pdf 09/09-functors.pdf 10/10-applicative.pdf 11/11-applicative2.pdf 12/12-monads.pdf

01/01-intro.html:
	curl -o $@ $(ROOT)/lectures/01-intro.html

02/02-ADTs.html:
	curl -o $@ $(ROOT)/lectures/02-ADTs.html

03/03-rec-poly.html:
	curl -o $@ $(ROOT)/lectures/03-rec-poly.html

04/04-higher-order.html:
	curl -o $@ $(ROOT)/lectures/04-higher-order.html

05/05-type-classes.html:
	curl -o $@ $(ROOT)/lectures/05-type-classes.html

06/06-laziness.html:
	curl -o $@ $(ROOT)/lectures/06-laziness.html

07/07-folds-monoids.html:
	curl -o $@ $(ROOT)/lectures/07-folds-monoids.html

08/08-IO.html:
	curl -o $@ $(ROOT)/lectures/08-IO.html

09/09-functors.html:
	curl -o $@ $(ROOT)/lectures/09-functors.html

10/10-applicative.html:
	curl -o $@ $(ROOT)/lectures/10-applicative.html

11/11-applicative2.html:
	curl -o $@ $(ROOT)/lectures/11-applicative2.html

12/12-monads.html:
	curl -o $@ $(ROOT)/lectures/12-monads.html

lectures: css/style.css 01/01-intro.html 02/02-ADTs.html 03/03-rec-poly.html 04/04-higher-order.html 05/05-type-classes.html 06/06-laziness.html 07/07-folds-monoids.html 08/08-IO.html 09/09-functors.html 10/10-applicative.html 11/11-applicative2.html 12/12-monads.html

.PHONY: all homeworks lectures
