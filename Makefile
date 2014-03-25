SRC_DIR := src/
IMG_DIR := images/
PDF_DIR := pdf/
PDF_NAME := learnyousomeerlang_ru.pdf
SRC_NAME := learnyousomeerlang_ru.tex
TEXCMD := TEXINPUTS=src: pdflatex -interaction=batchmode -output-directory $(PDF_DIR)
TEXCMDVERBOSE := TEXINPUTS=src: pdflatex -output-directory $(PDF_DIR)

all: $(PDF_NAME) $(IMG_DIR)*.png $(SRC_DIR)chapter*.tex clean

$(PDF_NAME): $(SRC_DIR)$(SRC_NAME) $(SRC_DIR)chapter*.tex
	$(TEXCMD) $(SRC_DIR)$(SRC_NAME) $(SRC_DIR)chapter*.tex

ref: $(PDF_NAME)
	$(TEXCMD) $(SRC_DIR)$(SRC_NAME)

debug: $(SRC_DIR)$(SRC_NAME) $(SRC_DIR)chapter*.tex
	$(TEXCMDVERBOSE) $(SRC_DIR)$(SRC_NAME)

clean:
	rm -f $(PDF_DIR)*.aux $(PDF_DIR)*.log $(PDF_DIR)*.out
