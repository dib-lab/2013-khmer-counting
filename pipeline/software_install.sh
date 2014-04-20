#!/bin/bash

# Die early if there is any problem
set -x

# Install pre-requisites (these are included with Starcluster)

apt-get -y update && apt-get -y install git make gcc g++ bc zlib1g-dev python-pip \
                    python-dev python-jinja2 python-tornado python-nose screen blast2 \
                    python-numpy python-matplotlib



# Install Tallymer
cd /usr/local/src
wget http://genometools.org/pub/genometools-1.5.1.tar.gz
tar zxvf genometools-1.5.1.tar.gz
cd genometools-1.5.1/
make 64bit=yes curses=no cairo=no
make 64bit=yes curses=no cairo=no install



# Install Jellyfish
cd /usr/local/src
wget http://www.cbcb.umd.edu/software/jellyfish/jellyfish-1.1.10.tar.gz
tar zxvf jellyfish-1.1.10.tar.gz
cd jellyfish-1.1.10/
./configure
make
make install

# Install DSK
cd /usr/local/src
ldconfig
wget http://minia.genouest.org/dsk/dsk-1.5031.tar.gz
tar zxvf dsk-1.5031.tar.gz
cd dsk-1.5031
make omp=1
cp dsk /usr/local/bin

# Install KMC
cd /usr/local/src
wget http://sun.aei.polsl.pl/kmc/download/kmc
wget http://sun.aei.polsl.pl/kmc/download/kmc_dump
chmod u+x kmc kmc_dump
mv kmc kmc_dump /usr/local/bin/


# Install BFCount
cd /usr/local/src
git clone https://github.com/pmelsted/BFCounter.git
cd BFCounter/
make
mv ./BFCounter /usr/local/bin/

# Install Turtle
cd /usr/local/src
wget http://bioinformatics.rutgers.edu/Static/Software/Turtle/Turtle-0.3.tar.gz
tar zxvf Turtle-0.3.tar.gz
cd Turtle-0.3/
make
mv *Turtle32 *Turtle64 /usr/local/bin/

# Install KAnalyze
cd /usr/local/src
wget http://downloads.sourceforge.net/project/kanalyze/v0.9.3/kanalyze-0.9.3-linux.tar.gz
tar zxvf kanalyze-0.9.3-linux.tar.gz


# Install QUAST
cd /usr/local/src
wget http://downloads.sourceforge.net/project/quast/quast-2.3.tar.gz
tar zxvf quast-2.3.tar.gz

# Install FASTX-toolkit
cd /usr/local/src
curl -O http://hannonlab.cshl.edu/fastx_toolkit/libgtextutils-0.6.1.tar.bz2
tar xjf libgtextutils-0.6.1.tar.bz2
cd libgtextutils-0.6.1/
./configure && make && make install

cd /usr/local/src
curl -O http://hannonlab.cshl.edu/fastx_toolkit/fastx_toolkit-0.0.13.2.tar.bz2
tar xjf fastx_toolkit-0.0.13.2.tar.bz2
cd fastx_toolkit-0.0.13.2/
./configure && make && make install

# Install Trimmomatic #
cd /usr/local/src
curl -O http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/Trimmomatic-0.30.zip
unzip Trimmomatic-0.30.zip
cd Trimmomatic-0.30/
cp trimmomatic-0.30.jar /usr/local/bin
cp -r adapters /usr/local/share/adapters

# Install seqtk
cd /usr/local/src
git clone git://github.com/lh3/seqtk.git
cd seqtk
make
cp seqtk /usr/local/bin


# Install ipython
cd /usr/local/src
git clone https://github.com/ipython/ipython.git
cd ipython
python setup.py install

# Upgrade pyzmq, which is required by ipython notebook
pip install pyzmq --upgrade

# Upgrade some other packages required by ipython notebook to draw figures

# numpy
cd /usr/local/src
git clone git://github.com/numpy/numpy.git numpy
cd numpy
python setup.py install

pip install pandas
pip install --upgrade patsy
apt-get install libfreetype6-dev
apt-get install libpng-dev
pip install matplotlib
pip install seaborn
pip install --upgrade six
pip install --upgrade statsmodels



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
