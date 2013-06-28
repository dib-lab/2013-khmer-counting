#! /bin/bash
# make small files for running pipeline as a test

if [ -d orig ]; then
   echo 'orig dir already exists'
   exit 0
fi

mkdir orig

for filename in ecoli_ref.fastq iowa_prairie_0920.fa.1 iowa_prairie_0920.fa.2 iowa_prairie_0920.fa.3 iowa_prairie_0920.fa.4 iowa_prairie_0920.fa.5 MH0001.trimmed.fa
do
   mv $filename orig/$filename && head -400000 orig/$filename > $filename
done
