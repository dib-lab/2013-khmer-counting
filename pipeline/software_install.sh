cd /usr/local/src

# Install Tallymer
wget http://genometools.org/pub/genometools-1.5.1.tar.gz
tar zxvf genometools-1.5.1.tar.gz 
cd genometools-1.5.1/
make 64bit=yes curses=no cairo=no
make 64bit=yes curses=no cairo=no install

cd /usr/local/src

# Install jellyfish
wget http://www.cbcb.umd.edu/software/jellyfish/jellyfish-1.1.10.tar.gz
tar zxvf jellyfish-1.1.10.tar.gz 
cd jellyfish-1.1.10/
./configure
make
make install

cd /usr/local/src
ldconfig

# Install DSK
wget http://minia.genouest.org/dsk/dsk-1.5031.tar.gz
tar zxvf dsk-1.5031.tar.gz
cd dsk-1.5031
make omp=1
cp dsk /usr/local/bin

cd /usr/local/src

# Install ipython
git clone https://github.com/ipython/ipython.git
cd ipython
python setup.py install

# Upgrade pyzmq, which is required by ipython notebook
pip install pyzmq --upgrade

cd /usr/local/src

# Upgrade the latex install with a few recommended packages
apt-get -y install texlive-latex-recommended

# Install Velvet
curl -O http://www.ebi.ac.uk/~zerbino/velvet/velvet_1.2.10.tgz
tar xvzf velvet_1.2.10.tgz 
cd velvet_1.2.10/
make 'MAXKMERLENGTH=49'
cp velveth /usr/bin
cp velvetg /usr/bin

# Install Blast
apt-get install blast2

