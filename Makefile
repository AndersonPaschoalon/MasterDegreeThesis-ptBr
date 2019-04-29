default: pdf

pdf:
	- pdflatex -shell-escape -synctex=1 -interaction=nonstopmode "MSc_Thesis".tex
	- bibtex MSc_Thesis
	- makeglossaries MSc_Thesis
	- pdflatex -shell-escape -synctex=1 -interaction=nonstopmode "MSc_Thesis".tex
	- pdflatex -shell-escape -synctex=1 -interaction=nonstopmode "MSc_Thesis".tex
	- make clean
clean:
	- rm -rfv docs/*.aux
	- rm -rfv docs/appendix/*.aux
	- rm -rfv *.bbl *.blg *.glo *.idx *.lof *.log *.lot *.synctex.gz *.toc \
		*.acn *.ist *.mw *.gz  *.acr *.glg *.ilg *.alg *.gls \
		*.ind *.aux 
	- rm -rfv _minted-MSc_Thesis



