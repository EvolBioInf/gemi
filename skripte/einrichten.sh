# Construct bin if necessary
test -d ~/bin || mkdir ~/bin
# Install curl, gv, latex, and zip
sudo apt update
sudo apt install -y curl evince gv texlive texlive-lang-german texlive-font-utils zip
# Install Neighbors
git clone https://github.com/evolbioinf/neighbors
cd neighbors
bash scripts/setup.sh
make
ln -s $(pwd)/bin/* ~/bin/
cd ..
# Install datasets
curl https://ftp.ncbi.nlm.nih.gov/pub/datasets/command-line/v2/linux-amd64/datasets -o ~/bin/datasets
chmod +x ~/bin/datasets
# Install Biobox
git clone https://github.com/evolbioinf/biobox
cd biobox
bash scripts/setup.sh
make
ln -s $(pwd)/bin/* ~/bin/
cd ..
source ~/.profile
