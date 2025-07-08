FILE := main
OUT  := build

.PHONY: pdf
pdf:
	latexmk -interaction=nonstopmode -outdir=$(OUT) -lualatex -halt-on-error $(FILE)

.PHONY: watch
watch:
	latexmk -interaction=nonstopmode -outdir=$(OUT) -lualatex -pvc -halt-on-error $(FILE)

.PHONY: clean
clean:
	rm -rf $(filter-out $(OUT)/$(FILE).pdf, $(wildcard $(OUT)/*))

.PHONY: purge
purge:
	rm -rf $(OUT)
