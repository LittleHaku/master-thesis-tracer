FILE := main
OUT  := build

pdf:
	latexmk -lualatex -outdir=$(OUT) -halt-on-error $(FILE)

watch:
	latexmk -pvc -lualatex -outdir=$(OUT) -halt-on-error $(FILE)

clean:
	latexmk -C -outdir=$(OUT)

purge:
	rm -rf $(OUT)
