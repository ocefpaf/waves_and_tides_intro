ALL=slides.html

.PHONY: all clean server web upload

all: $(ALL)

reveal.js:
	git clone https://github.com/hakimel/reveal.js

slides.html : slides.md
	pandoc $< -o $@ -t revealjs --table-of-contents --mathjax --standalone --css slides.css --highlight-style=espresso

serve:
	python -m SimpleHTTPServer

clean:
	-rm $(ALL)
