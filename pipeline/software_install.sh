cd /usr/local/src

# Install Tallymer
wget http://genometools.org/pub/genometools-1.5.1.tar.gz
tar zxvf genometools-1.5.1.tar.gz 
cd genometools-1.5.1/
make 64bit=yes curses=no cairo=no
make 64bit=yes curses=no cairo=no install
cd ..

# Install jellyfish
wget http://www.cbcb.umd.edu/software/jellyfish/jellyfish-1.1.10.tar.gz
tar zxvf jellyfish-1.1.10.tar.gz 
cd jellyfish-1.1.10/
./configure
make
make install
cd ..

# Install DSK
wget http://minia.genouest.org/dsk/dsk-1.5031.tar.gz
tar zxvf dsk-1.5031.tar.gz
make
cd ..

# Install ipython
git clone https://github.com/ipython/ipython.git
cd ipython
python setup.py install

# Upgrade the latex install with a few recommended packages
apt-get install texlive-latex-recommended

# Install environment variables


echo 'export PATH=$PATH:/home/qingpeng/bin/dsk-1.5031' >> ~/.bashrc


source ~/.bashrc


