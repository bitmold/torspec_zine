# https://spec.torproject.org/ as a ton of zines 

crude script to get the latest torspec as a bunch of zines (formatted for short edge double sided printing) - this is an unhinged way to read it as a phyiscal object 🤷‍♀️🤷‍♀️🤷‍♀️ 

Setup:
```bash
git submodule init 
git submodule update
cp cpd-binaries/YOUR_PLATFORM/cpdf .
sudo apt install wget texlive-extra-utils weasyprint
# on mac textlive-extra-utils (for pdfbook2) is:
# brew install --cask mactex
```

```bash
./buildzine
```