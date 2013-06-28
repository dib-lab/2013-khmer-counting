#! /usr/bin/env python
import khmer
import sys

print 'loading', sys.argv[1]
kh = khmer.load_counting_hash(sys.argv[1])  

print kh.ksize()

print 'reading', sys.argv[2]
fp = open(sys.argv[2])

n = 0
for line in fp:
   kmer = line.strip()
   if kh.get(kmer):
      n += 1

print 'counted %d k-mers from %s' % (n, sys.argv[2])
