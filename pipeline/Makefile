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
/usr/bin/time -o bloom_1_1_22.time1 load-into-counting.py --ksize 22 --n_hashes 4 --hashsize 1476277798 --threads 8 bloom_1_1_22.kh iowa_prairie_0920.fa.1 
/usr/bin/time -o bloom_1_1_22.time2 abundance-dist.py bloom_1_1_22.kh iowa_prairie_0920.fa.1 bloom_1_1_22.hist
/usr/bin/time -o bloom_1_1_22.time1 load-into-counting.py --ksize 22 --n_hashes 4 --hashsize 1476277798 --threads 8 bloom_1_1_22.kh iowa_prairie_0920.fa.1
/usr/bin/time -o bloom_1_1_22.time2 abundance-dist.py bloom_1_1_22.kh iowa_prairie_0920.fa.1 bloom_1_1_22.hist
/usr/bin/time -o bloom_2_1_22.time1 load-into-counting.py --ksize 22 --n_hashes 4 --hashsize 2789448361 --threads 8 bloom_2_1_22.kh iowa_prairie_0920.fa.2
/usr/bin/time -o bloom_2_1_22.time2 abundance-dist.py bloom_2_1_22.kh iowa_prairie_0920.fa.2 bloom_2_1_22.hist
/usr/bin/time -o bloom_3_1_22.time1 load-into-counting.py --ksize 22 --n_hashes 4 --hashsize 3803756180 --threads 8 bloom_3_1_22.kh iowa_prairie_0920.fa.3
/usr/bin/time -o bloom_3_1_22.time2 abundance-dist.py bloom_3_1_22.kh iowa_prairie_0920.fa.3 bloom_3_1_22.hist
/usr/bin/time -o bloom_4_1_22.time1 load-into-counting.py --ksize 22 --n_hashes 4 --hashsize 4657846829 --threads 8 bloom_4_1_22.kh iowa_prairie_0920.fa.4
/usr/bin/time -o bloom_4_1_22.time2 abundance-dist.py bloom_4_1_22.kh iowa_prairie_0920.fa.4 bloom_4_1_22.hist
/usr/bin/time -o bloom_5_1_22.time1 load-into-counting.py --ksize 22 --n_hashes 4 --hashsize 5580911687 --threads 8 bloom_5_1_22.kh iowa_prairie_0920.fa.5
/usr/bin/time -o bloom_5_1_22.time2 abundance-dist.py bloom_5_1_22.kh iowa_prairie_0920.fa.5 bloom_5_1_22.hist
/usr/bin/time -o bloom_1_5_22.time1 load-into-counting.py --ksize 22 --n_hashes 4 --hashsize 876416775 --threads 8 bloom_1_5_22.kh iowa_prairie_0920.fa.1
/usr/bin/time -o bloom_1_5_22.time2 abundance-dist.py bloom_1_5_22.kh iowa_prairie_0920.fa.1 bloom_1_5_22.hist
/usr/bin/time -o bloom_2_5_22.time1 load-into-counting.py --ksize 22 --n_hashes 4 --hashsize 1656002238 --threads 8 bloom_2_5_22.kh iowa_prairie_0920.fa.2
/usr/bin/time -o bloom_2_5_22.time2 abundance-dist.py bloom_2_5_22.kh iowa_prairie_0920.fa.2 bloom_2_5_22.hist
/usr/bin/time -o bloom_3_5_22.time1 load-into-counting.py --ksize 22 --n_hashes 4 --hashsize 2258162881 --threads 8 bloom_3_5_22.kh iowa_prairie_0920.fa.3
/usr/bin/time -o bloom_3_5_22.time2 abundance-dist.py bloom_3_5_22.kh iowa_prairie_0920.fa.3 bloom_3_5_22.hist
/usr/bin/time -o bloom_4_5_22.time1 load-into-counting.py --ksize 22 --n_hashes 4 --hashsize 2765207947 --threads 8 bloom_4_5_22.kh iowa_prairie_0920.fa.4
/usr/bin/time -o bloom_4_5_22.time2 abundance-dist.py bloom_4_5_22.kh iowa_prairie_0920.fa.4 bloom_4_5_22.hist
/usr/bin/time -o bloom_5_5_22.time1 load-into-counting.py --ksize 22 --n_hashes 4 --hashsize 3313200694 --threads 8 bloom_5_5_22.kh iowa_prairie_0920.fa.5
/usr/bin/time -o bloom_5_5_22.time2 abundance-dist.py bloom_5_5_22.kh iowa_prairie_0920.fa.5 bloom_5_5_22.hist
/usr/bin/time -o bloom_1_1_31.time1 load-into-counting.py --ksize 31 --n_hashes 4 --hashsize 1476277798 --threads 8 bloom_1_1_31.kh iowa_prairie_0920.fa.1
/usr/bin/time -o bloom_1_1_31.time2 abundance-dist.py bloom_1_1_31.kh iowa_prairie_0920.fa.1 bloom_1_1_31.hist
/usr/bin/time -o bloom_2_1_31.time1 load-into-counting.py --ksize 31 --n_hashes 4 --hashsize 2789448361 --threads 8 bloom_2_1_31.kh iowa_prairie_0920.fa.2
/usr/bin/time -o bloom_2_1_31.time2 abundance-dist.py bloom_2_1_31.kh iowa_prairie_0920.fa.2 bloom_2_1_31.hist
/usr/bin/time -o bloom_3_1_31.time1 load-into-counting.py --ksize 31 --n_hashes 4 --hashsize 3803756180 --threads 8 bloom_3_1_31.kh iowa_prairie_0920.fa.3
/usr/bin/time -o bloom_3_1_31.time2 abundance-dist.py bloom_3_1_31.kh iowa_prairie_0920.fa.3 bloom_3_1_31.hist
/usr/bin/time -o bloom_4_1_31.time1 load-into-counting.py --ksize 31 --n_hashes 4 --hashsize 4657846829 --threads 8 bloom_4_1_31.kh iowa_prairie_0920.fa.4
/usr/bin/time -o bloom_4_1_31.time2 abundance-dist.py bloom_4_1_31.kh iowa_prairie_0920.fa.4 bloom_4_1_31.hist
/usr/bin/time -o bloom_5_1_31.time1 load-into-counting.py --ksize 31 --n_hashes 4 --hashsize 5580911687 --threads 8 bloom_5_1_31.kh iowa_prairie_0920.fa.5
/usr/bin/time -o bloom_5_1_31.time2 abundance-dist.py bloom_5_1_31.kh iowa_prairie_0920.fa.5 bloom_5_1_31.hist
/usr/bin/time -o bloom_1_5_31.time1 load-into-counting.py --ksize 31 --n_hashes 4 --hashsize 876416775 --threads 8 bloom_1_5_31.kh iowa_prairie_0920.fa.1
/usr/bin/time -o bloom_1_5_31.time2 abundance-dist.py bloom_1_5_31.kh iowa_prairie_0920.fa.1 bloom_1_5_31.hist
/usr/bin/time -o bloom_2_5_31.time1 load-into-counting.py --ksize 31 --n_hashes 4 --hashsize 1656002238 --threads 8 bloom_2_5_31.kh iowa_prairie_0920.fa.2
/usr/bin/time -o bloom_2_5_31.time2 abundance-dist.py bloom_2_5_31.kh iowa_prairie_0920.fa.2 bloom_2_5_31.hist
/usr/bin/time -o bloom_3_5_31.time1 load-into-counting.py --ksize 31 --n_hashes 4 --hashsize 2258162881 --threads 8 bloom_3_5_31.kh iowa_prairie_0920.fa.3
/usr/bin/time -o bloom_3_5_31.time2 abundance-dist.py bloom_3_5_31.kh iowa_prairie_0920.fa.3 bloom_3_5_31.hist
/usr/bin/time -o bloom_4_5_31.time1 load-into-counting.py --ksize 31 --n_hashes 4 --hashsize 2765207947 --threads 8 bloom_4_5_31.kh iowa_prairie_0920.fa.4
/usr/bin/time -o bloom_4_5_31.time2 abundance-dist.py bloom_4_5_31.kh iowa_prairie_0920.fa.4 bloom_4_5_31.hist
/usr/bin/time -o bloom_5_5_31.time1 load-into-counting.py --ksize 31 --n_hashes 4 --hashsize 3313200694 --threads 8 bloom_5_5_31.kh iowa_prairie_0920.fa.5
/usr/bin/time -o bloom_5_5_31.time2 abundance-dist.py bloom_5_5_31.kh iowa_prairie_0920.fa.5 bloom_5_5_31.hist

# Jellyfish benchmark
/usr/bin/time -o jelly_1_22.time1 jellyfish count -m 22 -c 2 -C -s 701472602 -t 8 -o jelly_1_22 iowa_prairie_0920.fa.1
/usr/bin/time -o jelly_1_22.time2 jellyfish histo -t 8 -o jelly_1_22.hist ./jelly_1_22_0
/usr/bin/time -o jelly_2_22.time1 jellyfish count -m 22 -c 2 -C -s 1325442680 -t 8 -o jelly_2_22 iowa_prairie_0920.fa.2
/usr/bin/time -o jelly_2_22.time2 jellyfish histo -t 8 -o jelly_2_22.hist ./jelly_2_22_0
/usr/bin/time -o jelly_3_22.time1 jellyfish count -m 22 -c 2 -C -s 1807404236 -t 8 -o jelly_3_22 iowa_prairie_0920.fa.3
/usr/bin/time -o jelly_3_22.time2 jellyfish histo -t 8 -o jelly_3_22.hist ./jelly_3_22_0
/usr/bin/time -o jelly_4_22.time1 jellyfish count -m 22 -c 2 -C -s 2213236520 -t 8 -o jelly_4_22 iowa_prairie_0920.fa.4
/usr/bin/time -o jelly_4_22.time2 jellyfish histo -t 8 -o jelly_4_22.hist ./jelly_4_22_0
/usr/bin/time -o jelly_5_22.time1 jellyfish count -m 22 -c 2 -C -s 2651842796 -t 8 -o jelly_5_22 iowa_prairie_0920.fa.5
/usr/bin/time -o jelly_5_22.time2 jellyfish histo -t 8 -o jelly_5_22.hist ./jelly_5_22_0
/usr/bin/time -o jelly_1_31.time1 jellyfish count -m 31 -c 2 -C -s 701472602 -t 8 -o jelly_1_31 iowa_prairie_0920.fa.1
/usr/bin/time -o jelly_1_31.time2 jellyfish histo -t 8 -o jelly_1_31.hist ./jelly_1_31_0
/usr/bin/time -o jelly_2_31.time1 jellyfish count -m 31 -c 2 -C -s 1325442680 -t 8 -o jelly_2_31 iowa_prairie_0920.fa.2
/usr/bin/time -o jelly_2_31.time2 jellyfish histo -t 8 -o jelly_2_31.hist ./jelly_2_31_0
/usr/bin/time -o jelly_3_31.time1 jellyfish count -m 31 -c 2 -C -s 1807404236 -t 8 -o jelly_3_31 iowa_prairie_0920.fa.3
/usr/bin/time -o jelly_3_31.time2 jellyfish histo -t 8 -o jelly_3_31.hist ./jelly_3_31_0
/usr/bin/time -o jelly_4_31.time1 jellyfish count -m 31 -c 2 -C -s 2213236520 -t 8 -o jelly_4_31 iowa_prairie_0920.fa.4
/usr/bin/time -o jelly_4_31.time2 jellyfish histo -t 8 -o jelly_4_31.hist ./jelly_4_31_0
/usr/bin/time -o jelly_5_31.time1 jellyfish count -m 31 -c 2 -C -s 2651842796 -t 8 -o jelly_5_31 iowa_prairie_0920.fa.5
/usr/bin/time -o jelly_5_31.time2 jellyfish histo -t 8 -o jelly_5_31.hist ./jelly_5_31_0

# Tallymer benchmark

/usr/bin/time -o suffix_1_part1.time gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.1 -indexname 1_part1
/usr/bin/time -o suffix_2_part1.time gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.2 -indexname 2_part1
/usr/bin/time -o suffix_3_part1.time gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.3 -indexname 3_part1
/usr/bin/time -o suffix_4_part1.time gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.4 -indexname 4_part1
/usr/bin/time -o suffix_5_part1.time gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.5 -indexname 5_part1

/usr/bin/time -o suffix_1_part4.time gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.1 -indexname 1_part4 -parts 4
/usr/bin/time -o suffix_2_part4.time gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.2 -indexname 2_part4 -parts 4
/usr/bin/time -o suffix_3_part4.time gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.3 -indexname 3_part4 -parts 4
/usr/bin/time -o suffix_4_part4.time gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.4 -indexname 4_part4 -parts 4
/usr/bin/time -o suffix_5_part4.time gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.5 -indexname 5_part4 -parts 4

/usr/bin/time -o mkindex_1_part1_22.time gt tallymer mkindex -mersize 22  -esa 1_part1 >1_part1_22.hist
/usr/bin/time -o mkindex_2_part1_22.time gt tallymer mkindex -mersize 22  -esa 2_part1 >2_part1_22.hist
/usr/bin/time -o mkindex_3_part1_22.time gt tallymer mkindex -mersize 22  -esa 3_part1 >3_part1_22.hist
/usr/bin/time -o mkindex_4_part1_22.time gt tallymer mkindex -mersize 22  -esa 4_part1 >4_part1_22.hist
/usr/bin/time -o mkindex_5_part1_22.time gt tallymer mkindex -mersize 22  -esa 5_part1 >5_part1_22.hist
/usr/bin/time -o mkindex_1_part1_31.time gt tallymer mkindex -mersize 31  -esa 1_part1 >1_part1_31.hist
/usr/bin/time -o mkindex_2_part1_31.time gt tallymer mkindex -mersize 31  -esa 2_part1 >2_part1_31.hist
/usr/bin/time -o mkindex_3_part1_31.time gt tallymer mkindex -mersize 31  -esa 3_part1 >3_part1_31.hist
/usr/bin/time -o mkindex_4_part1_31.time gt tallymer mkindex -mersize 31  -esa 4_part1 >4_part1_31.hist
/usr/bin/time -o mkindex_5_part1_31.time gt tallymer mkindex -mersize 31  -esa 5_part1 >5_part1_31.hist


/usr/bin/time -o mkindex_1_part4_22.time gt tallymer mkindex -mersize 22  -esa 1_part4 >1_part4_22.hist
/usr/bin/time -o mkindex_2_part4_22.time gt tallymer mkindex -mersize 22  -esa 2_part4 >2_part4_22.hist
/usr/bin/time -o mkindex_3_part4_22.time gt tallymer mkindex -mersize 22  -esa 3_part4 >3_part4_22.hist
/usr/bin/time -o mkindex_4_part4_22.time gt tallymer mkindex -mersize 22  -esa 4_part4 >4_part4_22.hist
/usr/bin/time -o mkindex_5_part4_22.time gt tallymer mkindex -mersize 22  -esa 5_part4 >5_part4_22.hist
/usr/bin/time -o mkindex_1_part4_31.time gt tallymer mkindex -mersize 31  -esa 1_part4 >1_part4_31.hist
/usr/bin/time -o mkindex_2_part4_31.time gt tallymer mkindex -mersize 31  -esa 2_part4 >2_part4_31.hist
/usr/bin/time -o mkindex_3_part4_31.time gt tallymer mkindex -mersize 31  -esa 3_part4 >3_part4_31.hist
/usr/bin/time -o mkindex_4_part4_31.time gt tallymer mkindex -mersize 31  -esa 4_part4 >4_part4_31.hist
/usr/bin/time -o mkindex_5_part4_31.time gt tallymer mkindex -mersize 31  -esa 5_part4 >5_part4_31.hist

# dsk benchmark
/usr/bin/time -o dsk_1_22.time dsk iowa_prairie_0920.fa.1 22 -histo
/usr/bin/time -o dsk_1_31.time dsk iowa_prairie_0920.fa.1 31 -histo
/usr/bin/time -o dsk_2_22.time dsk iowa_prairie_0920.fa.2 22 -histo
/usr/bin/time -o dsk_2_31.time dsk iowa_prairie_0920.fa.2 31 -histo
/usr/bin/time -o dsk_3_22.time dsk iowa_prairie_0920.fa.3 22 -histo
/usr/bin/time -o dsk_3_31.time dsk iowa_prairie_0920.fa.3 31 -histo
/usr/bin/time -o dsk_4_22.time dsk iowa_prairie_0920.fa.4 22 -histo
/usr/bin/time -o dsk_4_31.time dsk iowa_prairie_0920.fa.4 31 -histo
/usr/bin/time -o dsk_5_22.time dsk iowa_prairie_0920.fa.5 22 -histo
/usr/bin/time -o dsk_5_31.time dsk iowa_prairie_0920.fa.5 31 -histo

/usr/bin/time -o dsk_1_22_60G.time dsk iowa_prairie_0920.fa.1 22 -m 60000 -histo 
/usr/bin/time -o dsk_1_31_60G.time dsk iowa_prairie_0920.fa.1 31 -m 60000 -histo
/usr/bin/time -o dsk_2_22_60G.time dsk iowa_prairie_0920.fa.2 22 -m 60000 -histo
/usr/bin/time -o dsk_2_31_60G.time dsk iowa_prairie_0920.fa.2 31 -m 60000 -histo
/usr/bin/time -o dsk_3_22_60G.time dsk iowa_prairie_0920.fa.3 22 -m 60000 -histo
/usr/bin/time -o dsk_3_31_60G.time dsk iowa_prairie_0920.fa.3 31 -m 60000 -histo
/usr/bin/time -o dsk_4_22_60G.time dsk iowa_prairie_0920.fa.4 22 -m 60000 -histo
/usr/bin/time -o dsk_4_31_60G.time dsk iowa_prairie_0920.fa.4 31 -m 60000 -histo
/usr/bin/time -o dsk_5_22_60G.time dsk iowa_prairie_0920.fa.5 22 -m 60000 -histo
/usr/bin/time -o dsk_5_31_60G.time dsk iowa_prairie_0920.fa.5 31 -m 60000 -histo

/usr/bin/time -o dsk_1_22_100Gdisk.time dsk iowa_prairie_0920.fa.1 22 -d 100000 -histo 
/usr/bin/time -o dsk_1_31_100Gdisk.time dsk iowa_prairie_0920.fa.1 31 -d 100000 -histo
/usr/bin/time -o dsk_2_22_100Gdisk.time dsk iowa_prairie_0920.fa.2 22 -d 100000 -histo
/usr/bin/time -o dsk_2_31_100Gdisk.time dsk iowa_prairie_0920.fa.2 31 -d 100000 -histo
/usr/bin/time -o dsk_3_22_100Gdisk.time dsk iowa_prairie_0920.fa.3 22 -d 100000 -histo
/usr/bin/time -o dsk_3_31_100Gdisk.time dsk iowa_prairie_0920.fa.3 31 -d 100000 -histo
/usr/bin/time -o dsk_4_22_100Gdisk.time dsk iowa_prairie_0920.fa.4 22 -d 100000 -histo
/usr/bin/time -o dsk_4_31_100Gdisk.time dsk iowa_prairie_0920.fa.4 31 -d 100000 -histo
/usr/bin/time -o dsk_5_22_100Gdisk.time dsk iowa_prairie_0920.fa.5 22 -d 100000 -histo
/usr/bin/time -o dsk_5_31_100Gdisk.time dsk iowa_prairie_0920.fa.5 31 -d 100000 -histo




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
