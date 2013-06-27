#
## construct a random genome
# from swr_qp.py
import random
import sys

#10000000
#N=10000*20
N = 1000000*6

genome = "A"*N + "C"*N + "G"*N + "T"*N
genome = list(genome)
random.shuffle(genome)
#line2 = "".join(genome)
#print line2

count = 0

for i in range(0,3000000,44):
    count = count +1
    bases = genome[i:i+44]
    line = "".join(bases)
    head = ">"+str(count)
    print head
    print line



