all: learnyousomeerlang_ru.pdf ./images/*.png clean

TEXCMD := pdflatex -interaction=batchmode

learnyousomeerlang_ru.pdf: learnyousomeerlang_ru.tex chapter*.tex
	$(TEXCMD) learnyousomeerlang_ru.tex

clean:
	rm -f *.aux *.log *.out
