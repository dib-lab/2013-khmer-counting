=======================================
Running the khmer paper script pipeline
=======================================

:Date: June 20, 2013

Here are some brief notes on how to run the pipeline for our 2013
khmer counting paper on an Amazon EC2 rental instance.  Using these
commands you should be able to completely recapitulate the paper.

The instructions below will reproduce all of the figures in the paper,
and will then compile the paper from scratch using the new figures.

(Note that you can also start with ami-61885608, which has all the
below software installed.) % not yet

.. and the EC2 snapshot snap-09d7f173 has all
.. of the data on it.  If you mount that volume and then cp -r everything
.. into /mnt, you will have all the software and files below installed in
.. the right place to run the pipline 'make' near the bottom.)

.. put in sofwtare version .tgz download?
.. https://github.com/ctb/khmer/tarball/2012-paper-diginorm

Starting up a machine and get necessary data for reproduction 
-------------------------------------------------------------

First, start up an EC2 instance using starcluster::

 starcluster start -o -s 1 -i m2.2xlarge -n ami-999d49f0 pipeline

You can also do this via the AWS console; just use ami-999d49f0, and
start an instance with 30gb or more of memory.

Make sure that port 22 (SSH) and port 80 (HTTP) are open; you'll need
the first one to log in, and the second one to connect to the ipython
notebook.

Now, log in! ::

 starcluster sshmaster pipeline

(or just ssh in however you would normally do it.)

First go to /mnt/ because we do not have enough space in home directory::

 cd /mnt/
 
Now, check out the source repository and grab the initial data
sets::

 cd /mnt
 git clone git://github.com/ged-lab/2013-khmer-counting.git
 cd 2013-khmer-counting

 curl -O http://athyra.ged.msu.edu/~qingpeng/2013-khmer-counting/pipeline-data-new.tar.gz
 tar xzf pipeline-data-new.tar.gz

Move raw data to working directory::

 cd pipeline-data-new
 mv * ~/2013-khmer-counting/pipeline

 
Installing necessary software
-----------------------------

Before we get started, we need to install all the necessary software, including:

 - Tallymer
 - Jellyfish
 - DSK
 - ipython
 - LaTex

To do so, run::

 cd pipeline
 bash software_install.sh

Next you'll need to install our packages 'screed' and 'khmer'.
In this case we're going to use the versions tagged for the paper :: % not yet

 cd /usr/local/src

 git clone git://github.com/ged-lab/screed.git -b 2012-paper-diginorm
 cd screed
 git checkout 2012-paper-diginorm
 python setup.py install
 cd ..

 git clone -b bleeding-edge  http://github.com/ged-lab/khmer.git khmer
 cd khmer
 make test
 cd ..

 echo 'export PYTHONPATH=/usr/local/src/khmer/python' >> ~/.bashrc
 echo 'export PATH=$PATH:/usr/local/src/khmer/scripts' >> ~/.bashrc
 echo 'export PATH=$PATH:/usr/local/src/khmer/sandbox' >> ~/.bashrc
 source ~/.bashrc

OK, now all your software is installed, hurrah!


Running the pipeline
--------------------

Now go into the pipeline directory and run the pipeline.  This will take a few
hours hours, so you might want to do it in 'screen' (see `"Running long jobs on
UNIX" <http://ged.msu.edu/angus/tutorials-2011/unix_long_jobs.html>`__). ::

 cd /mnt/2013-khmer-counting/pipeline
 make KHMER=/usr/local/src/khmer

Once it successfully completes, copy the data over to the ../data/ directory::

 make copydata

Run the ipython notebook server::

 cd ../notebook
 ipython notebook --pylab=inline --no-browser --ip=* --port=80 &

Connect into the ipython notebook (it will be running at 'http://<your EC2 hostname>'); if the above command succeeded but you can't connect in, you probably forgot to enable port 80 on your EC2 firewall.

Once you're connected in, select the 'khmer-counting' notebook (should be the
only one on the list) and open it.  Once open, go to the 'Cell...' menu
and select 'Run all'.


Now go back to the command line and execute::

 % cd ../
 % make

and voila, 'khmer-counting.pdf' will contain the paper with the figures you just
created.
