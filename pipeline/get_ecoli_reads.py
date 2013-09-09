import screed
import sys

filename = sys.argv[1]
fileout = sys.argv[2]
out = open(fileout,'w')

f=screed.open(filename)
head = 1
for record in f:
    sequence = record['sequence']
    if not 'N' in sequence:
        out.write('>'+str(head)+'\n')
        out.write(sequence+'\n')
        head = head + 1
    if head  == 45000:
        break
