import random
import sys
random.seed(0) # Reproducibility, FTW

# simulation reads with certain coverage and error rate from a random generated genome


#
## construct a random genome
def construct_genome(length):
    N=length/4
    genome = "A"*N + "C"*N + "G"*N + "T"*N
    genome = list(genome)
    random.shuffle(genome)
    genome = "".join(genome)
    return genome


def error(string,error_rate):
    string_list = list(string)
    size = len(string)
    error_num = int(size*error_rate)
    error = random.sample(xrange(size),error_num)
    for l in error:
        error_base = string_list[l]
        while error_base == string_list[l]:
            error_base_list = random.sample(['A','C','T','G'],1)
            error_base = error_base_list[0]
        string_list[l] = error_base

    new_string = ''.join(string_list)
    return new_string


genome_size = int(sys.argv[1]) # size of genome to simulate
coverage = float(sys.argv[2]) # coverage of reads to simulate
error_rate = float(sys.argv[3]) # error rate of reads simulated
length = int(sys.argv[4]) # read length
file_out = sys.argv[5]
file_genome = sys.argv[6] 

fw = open(file_out,'w')
fw2 = open(file_genome,'w')

genome=construct_genome(genome_size)

size = len(genome)
head_string = "random_"+str(size)
fw2.write('>%s\n%s\n' %(head_string,genome))

size_list = range(0,size-length)

number_of_reads = int(size*coverage/length)

print "genome size:      ",size
print "coverage:         " , coverage
print "read length:      ",length
print "number_of_reads:  ", number_of_reads
print "error rate:       ", error_rate
print "read file:        ",file_out
print "genome file:      ",file_genome
count = 0
reads = ''
while count<number_of_reads:
    start = random.choice(size_list)
    read = genome[start:start+length]
    reads = reads+read
#    fw.write('>%s\n%s\n' %(count,read))
    count = count+1
    #print count

if error_rate==0:
    reads_error = reads
else:
    reads_error = error(reads,error_rate)

count = 0
while count<number_of_reads:
    start = count*length
    read = reads_error[start:start+length]
    fw.write('>%s\n%s\n' %(count+1,read))
    count=count+1
