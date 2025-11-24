rm -rf spec.torproject.org
rm print*
wget -E -H -k -K -p https://spec.torproject.org/print.html
cp -r pngs/* spec.torproject.org
sed -i bak 's/svg/png/g' spec.torproject.org/print.html
weasyprint spec.torproject.org/print.html print.pdf

rm -rf zine
mkdir zine
./cpdf print.pdf -split -chunk 80 -o ./"zine"/%%%.pdf

cd zine 
echo "Creating booklets from chunks for printing..."

pwd
ls -al

pdfbook2 -i 20 -o 10 -t 10 -b 10 *
find . -type f \! -name "*book*" -delete
cd ..
rm -rf spec.torproject.org
rm print.pdf
