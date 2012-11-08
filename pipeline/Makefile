KHMER=~/dev/khmer

# khmer paper pipeline
# raw data:
#    iowa_prairie_0920.fa.1
#    iowa_prairie_0920.fa.2
#    iowa_prairie_0920.fa.3
#    iowa_prairie_0920.fa.4
#    iowa_prairie_0920.fa.5
#    MH0001.trimmed.fa


all: 

copydata:
	rm -fr ../data/
	mkdir ../data/
	cp *.time *.abun *.newabun *.newabun.v2 *.abund=1 *.abund=255 fp_assessment.out ../data/
	cp *.wc ../data/

clean:
	rm -f `cat clean-list.txt`

# khmer benchmark
bloom.1_0.01_22.time: iowa_prairie_0920.fa.1
/usr/bin/time -o bloom.1_0.01_22.time python bloom_count.py iowa_prairie_0920.fa.1 22 1476277798 4 iowa_prairie_0920.fa.1_0.01_22.out 

bloom.2_0.01_22.time: iowa_prairie_0920.fa.2
/usr/bin/time -o bloom.2_0.01_22.time python bloom_count.py iowa_prairie_0920.fa.2 22 2789448361 4 iowa_prairie_0920.fa.2_0.01_22.out 

bloom.3_0.01_22.time: iowa_prairie_0920.fa.3
/usr/bin/time -o bloom.3_0.01_22.time python bloom_count.py iowa_prairie_0920.fa.3 22 3803756180 4 iowa_prairie_0920.fa.3_0.01_22.out 

bloom.4_0.01_22.time: iowa_prairie_0920.fa.4
/usr/bin/time -o bloom.4_0.01_22.time python bloom_count.py iowa_prairie_0920.fa.4 22 4657846829 4 iowa_prairie_0920.fa.4_0.01_22.out 

bloom.5_0.01_22.time: iowa_prairie_0920.fa.5
/usr/bin/time -o bloom.5_0.01_22.time python bloom_count.py iowa_prairie_0920.fa.5 22 5580911687 4 iowa_prairie_0920.fa.5_0.01_22.out 

bloom.1_0.05_22.time: iowa_prairie_0920.fa.1
/usr/bin/time -o bloom.1_0.05_22.time python bloom_count.py iowa_prairie_0920.fa.1 22 876416775 4 iowa_prairie_0920.fa.1_0.05_22.out 

bloom.2_0.05_22.time: iowa_prairie_0920.fa.2
/usr/bin/time -o bloom.2_0.05_22.time python bloom_count.py iowa_prairie_0920.fa.2 22 1656002238 4 iowa_prairie_0920.fa.2_0.05_22.out 

bloom.3_0.05_22.time: iowa_prairie_0920.fa.3
/usr/bin/time -o bloom.3_0.05_22.time python bloom_count.py iowa_prairie_0920.fa.3 22 2258162881 4 iowa_prairie_0920.fa.3_0.05_22.out 

bloom.4_0.05_22.time: iowa_prairie_0920.fa.4
/usr/bin/time -o bloom.4_0.05_22.time python bloom_count.py iowa_prairie_0920.fa.4 22 2765207947 4 iowa_prairie_0920.fa.4_0.05_22.out 

bloom.5_0.05_22.time: iowa_prairie_0920.fa.5
/usr/bin/time -o bloom.5_0.05_22.time python bloom_count.py iowa_prairie_0920.fa.5 22 3313200694 4 iowa_prairie_0920.fa.5_0.05_22.out 

bloom.1_0.01_31.time: iowa_prairie_0920.fa.1
/usr/bin/time -o bloom.1_0.01_31.time python bloom_count.py iowa_prairie_0920.fa.1 31 1476277798 4 iowa_prairie_0920.fa.1_0.01_31.out 

bloom.2_0.01_31.time: iowa_prairie_0920.fa.2
/usr/bin/time -o bloom.2_0.01_31.time python bloom_count.py iowa_prairie_0920.fa.2 31 2789448361 4 iowa_prairie_0920.fa.2_0.01_31.out 

bloom.3_0.01_31.time: iowa_prairie_0920.fa.3
/usr/bin/time -o bloom.3_0.01_31.time python bloom_count.py iowa_prairie_0920.fa.3 31 3803756180 4 iowa_prairie_0920.fa.3_0.01_31.out 

bloom.4_0.01_31.time: iowa_prairie_0920.fa.4
/usr/bin/time -o bloom.4_0.01_31.time python bloom_count.py iowa_prairie_0920.fa.4 31 4657846829 4 iowa_prairie_0920.fa.4_0.01_31.out 

bloom.5_0.01_31.time: iowa_prairie_0920.fa.5
/usr/bin/time -o bloom.5_0.01_31.time python bloom_count.py iowa_prairie_0920.fa.5 31 5580911687 4 iowa_prairie_0920.fa.5_0.01_31.out 

bloom.1_0.01_31.time: iowa_prairie_0920.fa.1
/usr/bin/time -o bloom.1_0.05_31.time python bloom_count.py iowa_prairie_0920.fa.1 31 876416775 4 iowa_prairie_0920.fa.1_0.05_31.out 

bloom.2_0.01_31.time: iowa_prairie_0920.fa.2
/usr/bin/time -o bloom.2_0.05_31.time python bloom_count.py iowa_prairie_0920.fa.2 31 1656002238 4 iowa_prairie_0920.fa.2_0.05_31.out 

bloom.3_0.01_31.time: iowa_prairie_0920.fa.3
/usr/bin/time -o bloom.3_0.05_31.time python bloom_count.py iowa_prairie_0920.fa.3 31 2258162881 4 iowa_prairie_0920.fa.3_0.05_31.out 

bloom.4_0.01_31.time: iowa_prairie_0920.fa.4
/usr/bin/time -o bloom.4_0.05_31.time python bloom_count.py iowa_prairie_0920.fa.4 31 2765207947 4 iowa_prairie_0920.fa.4_0.05_31.out 

bloom.5_0.01_31.time: iowa_prairie_0920.fa.5
/usr/bin/time -o bloom.5_0.05_31.time python bloom_count.py iowa_prairie_0920.fa.5 31 3313200694 4 iowa_prairie_0920.fa.5_0.05_31.out 

# Jellyfish benchmark
1_22_jellyfish.time: iowa_prairie_0920.fa.1
/usr/bin/time -o 1_22_jellyfish.time ~/bin/jellyfish-1.1.2/jellyfish/jellyfish count -m 22 -c 2 -C -s 701472602 iowa_prairie_0920.fa.1

2_22_jellyfish.time: iowa_prairie_0920.fa.2
/usr/bin/time -o 2_22_jellyfish.time ~/bin/jellyfish-1.1.2/jellyfish/jellyfish count -m 22 -c 2 -C -s 1325442680 iowa_prairie_0920.fa.2

3_22_jellyfish.time: iowa_prairie_0920.fa.3
/usr/bin/time -o 3_22_jellyfish.time ~/bin/jellyfish-1.1.2/jellyfish/jellyfish count -m 22 -c 2 -C -s 1807404236 iowa_prairie_0920.fa.3

4_22_jellyfish.time: iowa_prairie_0920.fa.4
/usr/bin/time -o 4_22_jellyfish.time ~/bin/jellyfish-1.1.2/jellyfish/jellyfish count -m 22 -c 2 -C -s 2213236520 iowa_prairie_0920.fa.4

5_22_jellyfish.time: iowa_prairie_0920.fa.5
/usr/bin/time -o 5_22_jellyfish.time ~/bin/jellyfish-1.1.2/jellyfish/jellyfish count -m 22 -c 2 -C -s 2651842796 iowa_prairie_0920.fa.5

1_31_jellyfish.time: iowa_prairie_0920.fa.1
/usr/bin/time -o 1_31_jellyfish.time ~/bin/jellyfish-1.1.2/jellyfish/jellyfish count -m 31 -c 2 -C -s 701472602 iowa_prairie_0920.fa.1

2_31_jellyfish.time: iowa_prairie_0920.fa.2
/usr/bin/time -o 2_31_jellyfish.time ~/bin/jellyfish-1.1.2/jellyfish/jellyfish count -m 31 -c 2 -C -s 1325442680 iowa_prairie_0920.fa.2

3_31_jellyfish.time: iowa_prairie_0920.fa.3
/usr/bin/time -o 3_31_jellyfish.time ~/bin/jellyfish-1.1.2/jellyfish/jellyfish count -m 31 -c 2 -C -s 1807404236 iowa_prairie_0920.fa.3

4_31_jellyfish.time: iowa_prairie_0920.fa.4
/usr/bin/time -o 4_31_jellyfish.time ~/bin/jellyfish-1.1.2/jellyfish/jellyfish count -m 31 -c 2 -C -s 2213236520 iowa_prairie_0920.fa.4

5_31_jellyfish.time: iowa_prairie_0920.fa.5
/usr/bin/time -o 5_31_jellyfish.time ~/bin/jellyfish-1.1.2/jellyfish/jellyfish count -m 31 -c 2 -C -s 2651842796 iowa_prairie_0920.fa.5

# Tallymer benchmark
suffix_1_part1.time: iowa_prairie_0920.fa.1
/usr/bin/time -o suffix_1_part1.time ~/bin/genometools-1.3.4/bin/gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.1 -indexname 1_part1

suffix_2_part1.time: iowa_prairie_0920.fa.2
/usr/bin/time -o suffix_2_part1.time ~/bin/genometools-1.3.4/bin/gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.2 -indexname 2_part1

suffix_3_part1.time: iowa_prairie_0920.fa.3
/usr/bin/time -o suffix_3_part1.time ~/bin/genometools-1.3.4/bin/gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.3 -indexname 3_part1

mkindex_1_part1_22.time: iowa_prairie_0920.fa.1
/usr/bin/time -o mkindex_1_part1_22.time ~/bin/genometools-1.3.4/bin/gt  tallymer mkindex -mersize 22  -esa 1_part1 >1_part1_22.kmers

mkindex_2_part1_22.time: iowa_prairie_0920.fa.2
/usr/bin/time -o mkindex_2_part1_22.time ~/bin/genometools-1.3.4/bin/gt  tallymer mkindex -mersize 22  -esa 2_part1 >2_part1_22.kmers

mkindex_3_part1_22.time: iowa_prairie_0920.fa.3
/usr/bin/time -o mkindex_3_part1_22.time ~/bin/genometools-1.3.4/bin/gt  tallymer mkindex -mersize 22  -esa 3_part1 >3_part1_22.kmers

mkindex_1_part1_31.time: iowa_prairie_0920.fa.1
/usr/bin/time -o mkindex_1_part1_31.time ~/bin/genometools-1.3.4/bin/gt  tallymer mkindex -mersize 31  -esa 1_part1 >1_part1_31.kmers

mkindex_2_part1_31.time: iowa_prairie_0920.fa.2
/usr/bin/time -o mkindex_2_part1_31.time ~/bin/genometools-1.3.4/bin/gt  tallymer mkindex -mersize 31  -esa 2_part1 >2_part1_31.kmers

mkindex_3_part1_31.time: iowa_prairie_0920.fa.3
/usr/bin/time -o mkindex_3_part1_31.time ~/bin/genometools-1.3.4/bin/gt  tallymer mkindex -mersize 31  -esa 3_part1 >3_part1_31.kmers

suffix_1_part4.time: iowa_prairie_0920.fa.1
/usr/bin/time -o suffix_1_part4.time ~/bin/genometools-1.3.4/bin/gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.1 -indexname 1_part4 -parts 4

suffix_2_part4.time: iowa_prairie_0920.fa.2
/usr/bin/time -o suffix_2_part4.time ~/bin/genometools-1.3.4/bin/gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.2 -indexname 2_part4 -parts 4

suffix_3_part4.time: iowa_prairie_0920.fa.3
/usr/bin/time -o suffix_3_part4.time ~/bin/genometools-1.3.4/bin/gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.3 -indexname 3_part4 -parts 4

suffix_4_part4.time: iowa_prairie_0920.fa.4
/usr/bin/time -o suffix_4_part4.time ~/bin/genometools-1.3.4/bin/gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.4 -indexname 4_part4 -parts 4

suffix_5_part4.time: iowa_prairie_0920.fa.5
/usr/bin/time -o suffix_5_part4.time ~/bin/genometools-1.3.4/bin/gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.5 -indexname 5_part4 -parts 4

mkindex_1_part4_22.time: iowa_prairie_0920.fa.1
/usr/bin/time -o mkindex_1_part4_22.time ~/bin/genometools-1.3.4/bin/gt  tallymer mkindex -mersize 22  -esa 1_part4 >1_part4_22.kmers

mkindex_2_part4_22.time: iowa_prairie_0920.fa.2
/usr/bin/time -o mkindex_2_part4_22.time ~/bin/genometools-1.3.4/bin/gt  tallymer mkindex -mersize 22  -esa 2_part4 >2_part4_22.kmers

mkindex_3_part4_22.time: iowa_prairie_0920.fa.3
/usr/bin/time -o mkindex_3_part4_22.time ~/bin/genometools-1.3.4/bin/gt  tallymer mkindex -mersize 22  -esa 3_part4 >3_part4_22.kmers

mkindex_4_part4_22.time: iowa_prairie_0920.fa.4
/usr/bin/time -o mkindex_4_part4_22.time ~/bin/genometools-1.3.4/bin/gt  tallymer mkindex -mersize 22  -esa 4_part4 >4_part4_22.kmers

mkindex_5_part4_22.time: iowa_prairie_0920.fa.5
/usr/bin/time -o mkindex_5_part4_22.time ~/bin/genometools-1.3.4/bin/gt  tallymer mkindex -mersize 22  -esa 5_part4 >5_part4_22.kmers

mkindex_1_part4_31.time: iowa_prairie_0920.fa.1
/usr/bin/time -o mkindex_1_part4_31.time ~/bin/genometools-1.3.4/bin/gt  tallymer mkindex -mersize 31  -esa 1_part4 >1_part4_31.kmers

mkindex_2_part4_31.time: iowa_prairie_0920.fa.2
/usr/bin/time -o mkindex_2_part4_31.time ~/bin/genometools-1.3.4/bin/gt  tallymer mkindex -mersize 31  -esa 2_part4 >2_part4_31.kmers

mkindex_3_part4_31.time: iowa_prairie_0920.fa.3
/usr/bin/time -o mkindex_3_part4_31.time ~/bin/genometools-1.3.4/bin/gt  tallymer mkindex -mersize 31  -esa 3_part4 >3_part4_31.kmers

mkindex_4_part4_31.time: iowa_prairie_0920.fa.4
/usr/bin/time -o mkindex_4_part4_31.time ~/bin/genometools-1.3.4/bin/gt  tallymer mkindex -mersize 31  -esa 4_part4 >4_part4_31.kmers

mkindex_5_part4_31.time: iowa_prairie_0920.fa.5
/usr/bin/time -o mkindex_5_part4_31.time ~/bin/genometools-1.3.4/bin/gt  tallymer mkindex -mersize 31  -esa 5_part4 >5_part4_31.kmers

# Assessment of false positive rate and miscount distribution
random_reads_1.67M_3c_0.03e.fa:
        python /u/qingpeng/Work/1_KhmerPaper/0_Check_Math/simulate_random_reads.py 1670000 3 0.03 44 random_reads_1.67M_3c_0.03e.fa random_genome_1M.fa
random_reads_2.54M_3c_0.00e.fa:
        python /u/qingpeng/Work/1_KhmerPaper/0_Check_Math/simulate_random_reads.py 2540000 3 0.00 44 random_reads_2.54M_3c_0.00e.fa random_genome_1M.fa
MH0001.trimmed.head176800.fa: MH0001.trimmed.fa
        head -176800 MH0001.trimmed.fa >MH0001.trimmed.head176800.fa


        python ~/Work/1_KhmerPaper/0_Check_Math/check_math_v2.py "100000,200000,400000,600000,800000,1000000,1200000" "MH0001.trimmed.head176800.fa,random_kmers_1M_3c.fa,random_reads_1.67M_3c_0.03e.fa,random_reads_2.54M_3c_0.00e.fa" data4.log

# Investigation of sequencing error pattern by k-mer abundance distribution
# raw data:ecoli_ref.fastq

ecoli_ref.fastq.fasta: ecoli_ref.fastq.fastq
	python ~/Dropbox/Work/Github/newkhmer/sandbox/fastq-to-fasta.py ecoli_ref.fastq >ecoli_ref.fastq.fasta

ecoli_ref.fastq.ht: ecoli_ref.fastq
        python ${KHMER}/scripts/load-into-counting.py --ksize 17 --n_hashes 4 --hashsize 1e9 ecoli_ref.fastq.ht ecoli_ref.fastq

ecoli_ref.fastq.fasta.freq: ecoli_ref.fastq.ht
        python ${KHMER}/sandbox/fasta-to-abundance-hist.py ecoli_ref.fastq.ht ecoli_ref.fastq.fasta

ecoli_ref.fastq.fasta.freq.abun: ecoli_ref.fastq.fasta.freq
        python ${KHMER}/sandbox/abundance-hist-by-position.py ecoli_ref.fastq.fasta.freq >ecoli_ref.fastq.fasta.freq.abun

ecoli_ref.fastq.fasta.pos.abund=1: ecoli_ref.fastq.ht
        python ${KHMER}/sandbox/hi-lo-abundance-by-position.py ecoli_ref.fastq.ht ecoli_ref.fastq.fasta 


ecoli_ref.fastq.ht.k32: ecoli_ref.fastq
        python ${KHMER}/scripts/load-into-counting.py --ksize 32 --n_hashes 4 --hashsize 1e9 ecoli_ref.fastq.ht.k32 ecoli_ref.fastq

ecoli_ref.fastq.fasta.freq32: ecoli_ref.fastq.ht.k32
        python fasta-to-abundance-hist-k32.py ecoli_ref.fastq.ht.k32 ecoli_ref.fastq.fasta

ecoli_ref.fastq.fasta.freq32.abun: ecoli_ref.fastq.fasta.freq32
        python ${KHMER}/sandbox/abundance-hist-by-position.py ecoli_ref.fastq.fasta.freq32 >ecoli_ref.fastq.fasta.freq32.abun

ecoli_ref.fastq.fasta.pos32.abund=1: ecoli_ref.fastq.ht.k32
        python hi-lo-abundance-by-position-k32.py ecoli_ref.fastq.ht.k32 ecoli_ref.fastq.fasta 

# with error bar

ecoli_ref.fastq.fasta.freq.newabun: ecoli_ref.fastq.fasta.freq
	python abundance-hist-by-position-with-ster.py ecoli_ref.fastq.fasta.freq >ecoli_ref.fastq.fasta.freq.newabun

ecoli_ref.fastq.fasta.freq32.newabun: ecoli_ref.fastq.fasta.freq32
	python abundance-hist-by-position-with-ster.py ecoli_ref.fastq.fasta.freq32 >ecoli_ref.fastq.fasta.freq32.newabun

ecoli_ref.fastq.fasta.freq32.newabun.v2: ecoli_ref.fastq.fasta.freq32.newabun
	python square_root.py ecoli_ref.fastq.fasta.freq32.newabun >ecoli_ref.fastq.fasta.freq32.newabun.v2

ecoli_ref.fastq.fasta.freq.newabun.v2: ecoli_ref.fastq.fasta.freq.newabun
	python square_root.py ecoli_ref.fastq.fasta.freq.newabun >ecoli_ref.fastq.fasta.freq.newabun.v2


# abundance filtering

# hash table size: 1e8

# step1 preprocess tallymer database
~/genometools-1.3.4/bin/gt suffixerator -dna -pl -tis -suf -lcp -v -parts 4 -db MH0001.trimmed.fa -indexname MH0001
~/genometools-1.3.4/bin/gt tallymer mkindex -mersize 32 -minocc 1 -maxocc 1 -esa MH0001 -indexname MH0001-reads -counts -pl

MH0001.trimmed.fa.out.e8:  MH0001.trimmed.fa
python filter-inexact-all_hs.py MH0001.trimmed.fa MH0001.trimmed.fa.out.e8 100000000

MH0001.trimmed.fa.out2.e8:  MH0001.trimmed.fa.out.e8
python filter-inexact-all_hs.py MH0001.trimmed.fa.out.e8 MH0001.trimmed.fa.out2.e8 100000000

MH0001.trimmed.fa.out3.e8:  MH0001.trimmed.fa.out2.e8
python filter-inexact-all_hs.py MH0001.trimmed.fa.out2.e8 MH0001.trimmed.fa.out3.e8 100000000

MH0001.trimmed.fa.out4.e8:  MH0001.trimmed.fa.out3.e8
python filter-inexact-all_hs.py MH0001.trimmed.fa.out3.e8 MH0001.trimmed.fa.out4.e8 100000000

MH0001.trimmed.fa.out.e8.unique: MH0001.trimmed.fa.out.e8
~/genometools-1.3.4/bin/gt tallymer search -output qseqnum qpos counts -tyr MH0001-reads  -q MH0001.trimmed.fa.out.e8 >MH0001.trimmed.fa.out.e8.unique

MH0001.trimmed.fa.out2.e8.unique: MH0001.trimmed.fa.out2.e8
~/genometools-1.3.4/bin/gt tallymer search -output qseqnum qpos counts -tyr MH0001-reads  -q MH0001.trimmed.fa.out2.e8 >MH0001.trimmed.fa.out2.e8.unique

MH0001.trimmed.fa.out3.e8.unique: MH0001.trimmed.fa.out3.e8
~/genometools-1.3.4/bin/gt tallymer search -output qseqnum qpos counts -tyr MH0001-reads  -q MH0001.trimmed.fa.out3.e8 >MH0001.trimmed.fa.out3.e8.unique

MH0001.trimmed.fa.out4.e8.unique: MH0001.trimmed.fa.out4.e8
~/genometools-1.3.4/bin/gt tallymer search -output qseqnum qpos counts -tyr MH0001-reads  -q MH0001.trimmed.fa.out4.e8 >MH0001.trimmed.fa.out4.e8.unique

MH0001.trimmed.fa.out.e8.unique.sequence_id: MH0001.trimmed.fa.out.e8.unique
more MH0001.trimmed.fa.out.e8.unique |cut -f 1|sort -u >MH0001.trimmed.fa.out.e8.unique.sequence_id

MH0001.trimmed.fa.out2.e8.unique.sequence_id: MH0001.trimmed.fa.out2.e8.unique
more MH0001.trimmed.fa.out2.e8.unique |cut -f 1|sort -u >MH0001.trimmed.fa.out2.e8.unique.sequence_id

MH0001.trimmed.fa.out3.e8.unique.sequence_id: MH0001.trimmed.fa.out3.e8.unique
more MH0001.trimmed.fa.out3.e8.unique |cut -f 1|sort -u >MH0001.trimmed.fa.out3.e8.unique.sequence_id

MH0001.trimmed.fa.out4.e8.unique.sequence_id: MH0001.trimmed.fa.out4.e8.unique
more MH0001.trimmed.fa.out4.e8.unique |cut -f 1|sort -u >MH0001.trimmed.fa.out4.e8.unique.sequence_id

# hash table size: 1e9

MH0001.trimmed.fa.out: MH0001.trimmed.fa
python filter-inexact-all_hs.py MH0001.trimmed.fa MH0001.trimmed.fa.out 1000000000

MH0001.trimmed.fa.out2: MH0001.trimmed.fa.out
python filter-inexact-all_hs.py MH0001.trimmed.fa.out MH0001.trimmed.fa.out2 1000000000

MH0001.trimmed.fa.out3: MH0001.trimmed.fa.out2
python filter-inexact-all_hs.py MH0001.trimmed.fa.out2 MH0001.trimmed.fa.out3 1000000000

MH0001.trimmed.fa.out4: MH0001.trimmed.fa.out3
python filter-inexact-all_hs.py MH0001.trimmed.fa.out3 MH0001.trimmed.fa.out4 1000000000

MH0001.trimmed.fa.out.unique:  MH0001.trimmed.fa.out
~/genometools-1.3.4/bin/gt tallymer search -output qseqnum qpos counts -tyr MH0001-reads  -q MH0001.trimmed.fa.out >MH0001.trimmed.fa.out.unique

MH0001.trimmed.fa.out2.unique:  MH0001.trimmed.fa.out2
~/genometools-1.3.4/bin/gt tallymer search -output qseqnum qpos counts -tyr MH0001-reads  -q MH0001.trimmed.fa.out2 >MH0001.trimmed.fa.out2.unique

MH0001.trimmed.fa.out3.unique:  MH0001.trimmed.fa.out3
~/genometools-1.3.4/bin/gt tallymer search -output qseqnum qpos counts -tyr MH0001-reads  -q MH0001.trimmed.fa.out3 >MH0001.trimmed.fa.out3.unique

MH0001.trimmed.fa.out4.unique:  MH0001.trimmed.fa.out4
~/genometools-1.3.4/bin/gt tallymer search -output qseqnum qpos counts -tyr MH0001-reads  -q MH0001.trimmed.fa.out4 >MH0001.trimmed.fa.out4.unique

MH0001.trimmed.fa.out.unique.sequence_id:  MH0001.trimmed.fa.out.unique
more MH0001.trimmed.fa.out.unique |cut -f 1|sort -u >MH0001.trimmed.fa.out.unique.sequence_id

MH0001.trimmed.fa.out2.unique.sequence_id:  MH0001.trimmed.fa.out2.unique
more MH0001.trimmed.fa.out2.unique |cut -f 1|sort -u >MH0001.trimmed.fa.out2.unique.sequence_id

MH0001.trimmed.fa.out3.unique.sequence_id:  MH0001.trimmed.fa.out3.unique
more MH0001.trimmed.fa.out3.unique |cut -f 1|sort -u >MH0001.trimmed.fa.out3.unique.sequence_id

MH0001.trimmed.fa.out4.unique.sequence_id:  MH0001.trimmed.fa.out4.unique
more MH0001.trimmed.fa.out4.unique |cut -f 1|sort -u >MH0001.trimmed.fa.out4.unique.sequence_id

# get the number of remaining reads and number of bad reads
# 

sequence_id.wc:
wc *.sequence_id >sequence_id.wc 

reads.wc:
wc MH0001.trimmed.fa *.out *.out? *.out.e8 *.out?.e8 >reads.wc
