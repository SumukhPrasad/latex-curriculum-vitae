echo "\033[1mStarting pdfLaTeX...\033[0m"
pdflatex --file-line-error --synctex=1 "main.tex"


echo
echo "\033[1mRemoving AUX files...\033[0m"
rm main.aux
rm main.log
rm main.synctex.gz
open ./main.pdf


echo
echo "\033[1mDone.\033[0m"
