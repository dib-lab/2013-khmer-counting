import sys
from numpy import array
import numpy

n = 0
countSum = [0]*255
countN = [0]*255
array_tok = [[]]*255

fd = open(sys.argv[1])
for n, line in enumerate(fd):
   if n % 100000 == 0:
      print >>sys.stderr, '...', n

   tok = line.split()

   for i in range(len(tok)):
      array_tok[i].append(tok[i])
      
      countSum[i] += int(tok[i])
      countN[i] += 1

y = [0.0]*len(countSum)
mean = [0.0]*len(countSum)
st = [0.0]*len(countSum)
for i in range(len(countSum)):
   if countN[i]:
      y[i] = float(countSum[i]) / float(countN[i])
      num_array = numpy.asarray(array_tok[i])
      mean[i] = num_array.mean()
      st[i] = num_array.std()
      

for n, i in enumerate(y):
   print n, i, mean[n], st[n]
   
   
