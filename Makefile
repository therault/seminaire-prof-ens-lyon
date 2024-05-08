DOT2TEX=$(shell which dot2tex)

main.pdf: $(wildcard *.tex) Makefile
	@[ -x $(DOT2TEX) ] || echo "Please install dot2tex to compile everything -- you can try pdflatex main.tex if you want to bypass this test" && echo "dot2tex found in $(DOT2TEX)"
	@test -x $(DOT2TEX)
	pdflatex --shell-escape main.tex

