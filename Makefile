all: learnyousomeerlang_ru.pdf ./images/*.png

TEXCMD := pdflatex -interaction=batchmode

learnyousomeerlang_ru.pdf: learnyousomeerlang_ru.tex
	$(TEXCMD) learnyousomeerlang_ru.tex

clean:
	rm *.aux *.log *.out
