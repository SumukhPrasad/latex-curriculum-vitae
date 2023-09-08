

echo "\033[1mCreating directory...\033[0m"
mkdir ../ctan-dist

echo "\033[1mCopying files...\033[0m"
rsync -av --exclude=".*" ./* "../ctan-dist/"

mv ../ctan-dist ./ctan-dist
cd ctan-dist

mv main.tex curriculum-vitae-example.tex
mv main.pdf curriculum-vitae-example.pdf
rm -rf .git
rm -rf __MACOSX
rm build.sh
rm build-ctan-dist.sh

cd ..

mv ctan-dist curriculum-vitae
zip -vr curriculum-vitae.zip curriculum-vitae/ -x "*.DS_Store"
mv curriculum-vitae ctan-dist