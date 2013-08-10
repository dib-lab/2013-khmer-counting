## using bloom filter to count unique kmers

import khmer
import sys
import screed
#from screed.fastq import fastq_iter

filename = sys.argv[1]
K = int(sys.argv[2]) # size of kmer
HT_SIZE= int(sys.argv[3])# size of hashtable
N_HT = int(sys.argv[4]) # number of hashtables

ht = khmer.new_hashbits(K, HT_SIZE, N_HT)

n_unique = 0
f = screed.open(filename)

for record in f:
    sequence = record['sequence']
    ht.consume(sequence)
print ht.n_unique_kmers()
print ht.n_occupied()
