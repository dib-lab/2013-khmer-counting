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

Starting up a machine and get necessary data for reproduction 
-------------------------------------------------------------

First, start up an EC2 instance using starcluster::

 starcluster start -o -s 1 -i m2.2xlarge -n ami-999d49f0 pipeline

You can also do this via the AWS console; just use ami-999d49f0, and
start an instance with 30gb or more of memory .(here m2.2xlarge, the most memory:cost efficient)

Make sure that port 22 (SSH) and port 80 (HTTP) are open; you'll need
the first one to log in, and the second one to connect to the ipython
notebook.

Now, log in! ::

 starcluster sshmaster pipeline

(or just ssh in however you would normally do it. Here- ubuntu)

First go to /mnt/ because we do not have enough space in home directory::
 i
 cd /mnt
 
Now, check out the source repository and grab the initial data
sets::

 git clone https://github.com/ngs-docs/ngs-scripts

 git clone https://github.com/ged-lab/2013-khmer-counting.git
 cd 2013-khmer-counting

 curl -O http://public.ged.msu.edu.s3.amazonaws.com/2013-khmer-counting/2013-khmer-counting-data.tar.gz

 tar xzf 2013-khmer-counting-data.tar.gz
 
Installing necessary software
-----------------------------

Before we get started, we need to install all the necessary software, including:

 - Tallymer
 - Jellyfish
 - DSK
 - KMC
 - BFCount
 - Turtle
 - QUAST
 - FASTX-toolkit
 - seqtk
 - ipython
 - LaTex
 - Velvet

To do so, run::

 cd /mnt/2013-khmer-counting/pipeline
 bash software_install.sh

.. @CTB fix tags

   
   
   
Next you'll need to install our packages 'screed' and 'khmer'.
In this case we're going to use the versions tagged for the paper ::

 cd /usr/local/share

 git clone git://github.com/ged-lab/screed.git
 cd screed
 git checkout 2013-khmer-counting
 python setup.py install
 cd ..

 git clone https://github.com/ged-lab/khmer.git
 cd khmer
 git checkout v1.0.1
 make install


 
OK, now all your software is installed, hurrah!


Running the pipeline
--------------------

Now go into the pipeline directory and run the pipeline.  This will take a few
hours hours, so you might want to do it in 'screen' (see `"Running long jobs on
UNIX" <http://ged.msu.edu/angus/tutorials-2011/unix_long_jobs.html>`__). ::

 cd /mnt/2013-khmer-counting/pipeline
 make KHMER=/usr/local/share/khmer

Once it successfully completes, copy the data over to the ../data/ directory::

 make copydata

Run the ipython notebook server::

 cd ../notebook
 ipython notebook --no-browser --ip=* --port=80 &

Connect into the ipython notebook (it will be running at 'http://<your EC2 hostname>'); if the above command succeeded but you can't connect in, you probably forgot to enable port 80 on your EC2 firewall.

Once you're connected in, select the 'khmer-counting' notebook (should be the
only one on the list) and open it.  Once open, go to the 'Cell...' menu
and select 'Run all'.


Now go back to the command line and execute::

 % cd ../
 % make

and voila, 'khmer-counting.pdf' will contain the paper with the figures you just
created.
