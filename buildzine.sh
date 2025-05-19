# sudo apt install weasyprint
# sudo apt-get install texlive-extra-utils
rm print*
wget -E -H -k -K -p https://spec.torproject.org/print.html

weasyprint spec.torproject.org/print.html print.pdf

rm -rf zine
mkdir zine
./cpdf print.pdf -split -chunk 40 -o ./"zine"/%%%.pdf
cd zine 
echo "Creating booklets from chunks for printing..."

pdfbook2 --short-edge -i 10 -o 10 -t 10 -b 10 *
find . -type f \! -name "*book*" -delete
