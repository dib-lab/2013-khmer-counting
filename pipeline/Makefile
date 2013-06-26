KHMER=~/dev/khmer

# khmer paper pipeline
# raw data:
#    iowa_prairie_0920.fa.1
#    iowa_prairie_0920.fa.2
#    iowa_prairie_0920.fa.3
#    iowa_prairie_0920.fa.4
#    iowa_prairie_0920.fa.5
#    MH0001.trimmed.fa
#    ecoli_ref.fastq

all: benchmark check_fp_rate check_error abundance_filtering

copydata:
	rm -fr ../data/
	mkdir ../data/
	cp jelly_*_22.hist *.time *.abund=1 fp_assessment.out *.wc ../data/


clean:
	rm -f `cat clean-list.txt`

bloom_1_1_22.hist:
	time -o bloom_1_1_22.time1 load-into-counting.py --ksize 22 --n_hashes 4 --hashsize 1476277798 --threads 8 bloom_1_1_22.kh iowa_prairie_0920.fa.1
	time -o bloom_1_1_22.time2 abundance-dist.py bloom_1_1_22.kh iowa_prairie_0920.fa.1 bloom_1_1_22.hist

bloom_2_1_22.hist:
	    time -o bloom_2_1_22.time1 load-into-counting.py --ksize 22 --n_hashes 4 --hashsize 2789448361 --threads 8 bloom_2_1_22.kh iowa_prairie_0920.fa.2
	    time -o bloom_2_1_22.time2 abundance-dist.py bloom_2_1_22.kh iowa_prairie_0920.fa.2 bloom_2_1_22.hist

benchmark: bloom_1_1_22.hist bloom_2_1_22.hist

	time -o bloom_3_1_22.time1 load-into-counting.py --ksize 22 --n_hashes 4 --hashsize 3803756180 --threads 8 bloom_3_1_22.kh iowa_prairie_0920.fa.3
	time -o bloom_3_1_22.time2 abundance-dist.py bloom_3_1_22.kh iowa_prairie_0920.fa.3 bloom_3_1_22.hist

	time -o bloom_4_1_22.time1 load-into-counting.py --ksize 22 --n_hashes 4 --hashsize 4657846829 --threads 8 bloom_4_1_22.kh iowa_prairie_0920.fa.4
	time -o bloom_4_1_22.time2 abundance-dist.py bloom_4_1_22.kh iowa_prairie_0920.fa.4 bloom_4_1_22.hist

	time -o bloom_5_1_22.time1 load-into-counting.py --ksize 22 --n_hashes 4 --hashsize 5580911687 --threads 8 bloom_5_1_22.kh iowa_prairie_0920.fa.5
	time -o bloom_5_1_22.time2 abundance-dist.py bloom_5_1_22.kh iowa_prairie_0920.fa.5 bloom_5_1_22.hist

	time -o bloom_1_5_22.time1 load-into-counting.py --ksize 22 --n_hashes 4 --hashsize 876416775 --threads 8 bloom_1_5_22.kh iowa_prairie_0920.fa.1
	time -o bloom_1_5_22.time2 abundance-dist.py bloom_1_5_22.kh iowa_prairie_0920.fa.1 bloom_1_5_22.hist

	time -o bloom_2_5_22.time1 load-into-counting.py --ksize 22 --n_hashes 4 --hashsize 1656002238 --threads 8 bloom_2_5_22.kh iowa_prairie_0920.fa.2
	time -o bloom_2_5_22.time2 abundance-dist.py bloom_2_5_22.kh iowa_prairie_0920.fa.2 bloom_2_5_22.hist

	time -o bloom_3_5_22.time1 load-into-counting.py --ksize 22 --n_hashes 4 --hashsize 2258162881 --threads 8 bloom_3_5_22.kh iowa_prairie_0920.fa.3
	time -o bloom_3_5_22.time2 abundance-dist.py bloom_3_5_22.kh iowa_prairie_0920.fa.3 bloom_3_5_22.hist

	time -o bloom_4_5_22.time1 load-into-counting.py --ksize 22 --n_hashes 4 --hashsize 2765207947 --threads 8 bloom_4_5_22.kh iowa_prairie_0920.fa.4
	time -o bloom_4_5_22.time2 abundance-dist.py bloom_4_5_22.kh iowa_prairie_0920.fa.4 bloom_4_5_22.hist

	time -o bloom_5_5_22.time1 load-into-counting.py --ksize 22 --n_hashes 4 --hashsize 3313200694 --threads 8 bloom_5_5_22.kh iowa_prairie_0920.fa.5
	time -o bloom_5_5_22.time2 abundance-dist.py bloom_5_5_22.kh iowa_prairie_0920.fa.5 bloom_5_5_22.hist

jellyfish:
	# Jellyfish benchmark k=22 and k=31
	time -o jelly_1_22.time1 jellyfish count -m 22 -c 2 -C -s 701472602 -t 8 -o jelly_1_22 iowa_prairie_0920.fa.1
	time -o jelly_1_22.time2 jellyfish histo -t 8 -o jelly_1_22.hist ./jelly_1_22_0

	time -o jelly_2_22.time1 jellyfish count -m 22 -c 2 -C -s 1325442680 -t 8 -o jelly_2_22 iowa_prairie_0920.fa.2
	time -o jelly_2_22.time2 jellyfish histo -t 8 -o jelly_2_22.hist ./jelly_2_22_0

	time -o jelly_3_22.time1 jellyfish count -m 22 -c 2 -C -s 1807404236 -t 8 -o jelly_3_22 iowa_prairie_0920.fa.3
	time -o jelly_3_22.time2 jellyfish histo -t 8 -o jelly_3_22.hist ./jelly_3_22_0

	time -o jelly_4_22.time1 jellyfish count -m 22 -c 2 -C -s 2213236520 -t 8 -o jelly_4_22 iowa_prairie_0920.fa.4
	time -o jelly_4_22.time2 jellyfish histo -t 8 -o jelly_4_22.hist ./jelly_4_22_0

	time -o jelly_5_22.time1 jellyfish count -m 22 -c 2 -C -s 2651842796 -t 8 -o jelly_5_22 iowa_prairie_0920.fa.5
	time -o jelly_5_22.time2 jellyfish histo -t 8 -o jelly_5_22.hist ./jelly_5_22_0

	time -o jelly_1_31.time1 jellyfish count -m 31 -c 2 -C -s 701472602 -t 8 -o jelly_1_31 iowa_prairie_0920.fa.1
	time -o jelly_1_31.time2 jellyfish histo -t 8 -o jelly_1_31.hist ./jelly_1_31_0

	time -o jelly_2_31.time1 jellyfish count -m 31 -c 2 -C -s 1325442680 -t 8 -o jelly_2_31 iowa_prairie_0920.fa.2
	time -o jelly_2_31.time2 jellyfish histo -t 8 -o jelly_2_31.hist ./jelly_2_31_0

	time -o jelly_3_31.time1 jellyfish count -m 31 -c 2 -C -s 1807404236 -t 8 -o jelly_3_31 iowa_prairie_0920.fa.3
	time -o jelly_3_31.time2 jellyfish histo -t 8 -o jelly_3_31.hist ./jelly_3_31_0

	time -o jelly_4_31.time1 jellyfish count -m 31 -c 2 -C -s 2213236520 -t 8 -o jelly_4_31 iowa_prairie_0920.fa.4
	time -o jelly_4_31.time2 jellyfish histo -t 8 -o jelly_4_31.hist ./jelly_4_31_0

	time -o jelly_5_31.time1 jellyfish count -m 31 -c 2 -C -s 2651842796 -t 8 -o jelly_5_31 iowa_prairie_0920.fa.5
	time -o jelly_5_31.time2 jellyfish histo -t 8 -o jelly_5_31.hist ./jelly_5_31_0

	# Tallymer benchmark part=1,k =22

	time -o suffix_1_part1.time gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.1 -indexname 1_part1
	time -o suffix_2_part1.time gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.2 -indexname 2_part1
	time -o suffix_3_part1.time gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.3 -indexname 3_part1
	time -o suffix_4_part1.time gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.4 -indexname 4_part1
	time -o suffix_5_part1.time gt suffixerator -dna -pl -tis -suf -lcp -db iowa_prairie_0920.fa.5 -indexname 5_part1

	time -o mkindex_1_part1_22.time gt tallymer mkindex -mersize 22  -esa 1_part1 >1_part1_22.hist
	time -o mkindex_2_part1_22.time gt tallymer mkindex -mersize 22  -esa 2_part1 >2_part1_22.hist
	time -o mkindex_3_part1_22.time gt tallymer mkindex -mersize 22  -esa 3_part1 >3_part1_22.hist
	time -o mkindex_4_part1_22.time gt tallymer mkindex -mersize 22  -esa 4_part1 >4_part1_22.hist
	time -o mkindex_5_part1_22.time gt tallymer mkindex -mersize 22  -esa 5_part1 >5_part1_22.hist


	# dsk benchmark k=22
	time -o dsk_1_22.time dsk iowa_prairie_0920.fa.1 22 -histo
	time -o dsk_2_22.time dsk iowa_prairie_0920.fa.2 22 -histo
	time -o dsk_3_22.time dsk iowa_prairie_0920.fa.3 22 -histo
	time -o dsk_4_22.time dsk iowa_prairie_0920.fa.4 22 -histo
	time -o dsk_5_22.time dsk iowa_prairie_0920.fa.5 22 -histo


check_fp_rate:
	# Assessment of false positive rate and miscount distribution
	python get_random_kmers_1M_C3.py >random_kmers_1M_3c.fa
	# get random reads with the same number of unique k-mers 
	python simulate_random_reads.py 1670000 3 0.03 44 random_reads_1.67M_3c_0.03e.fa random_genome_1M.fa
	python simulate_random_reads.py 2540000 3 0.00 44 random_reads_2.54M_3c_0.00e.fa random_genome_1M.fa
	head -176800 MH0001.trimmed.fa >MH0001.trimmed.head176800.fa
	python fp_assessment.py fp_assessment.out

check_error:
# Investigation of sequencing error pattern by k-mer abundance distribution
# raw data:ecoli_ref.fastq
	
	python ${KHMER}/sandbox/fastq-to-fasta.py ecoli_ref.fastq >ecoli_ref.fastq.fasta

	load-into-counting.py --ksize 17 --n_hashes 4 --hashsize 1e9 ecoli_ref.fastq.ht ecoli_ref.fastq
	python ${KHMER}/sandbox/fasta-to-abundance-hist.py ecoli_ref.fastq.ht ecoli_ref.fastq.fasta
	#@CTB I think this should be replaced with scripts/abundance-dist.py?
	# or not, leave this here and we will fix later.  But, I think you
	# you can feed fastq files diretly into these.
	python ${KHMER}/sandbox/hi-lo-abundance-by-position.py ecoli_ref.fastq.ht ecoli_ref.fastq.fasta 

	load-into-counting.py --ksize 32 --n_hashes 4 --hashsize 1e9 ecoli_ref.fastq.ht.k32 ecoli_ref.fastq
	python fasta-to-abundance-hist-k32.py ecoli_ref.fastq.ht.k32 ecoli_ref.fastq.fasta
	python hi-lo-abundance-by-position-k32.py ecoli_ref.fastq.ht.k32 ecoli_ref.fastq.fasta 
	# @CTB put in an mv afterwards to rename the files appropriately


abundance_filtering:

	# step1 preprocess tallymer database
	gt suffixerator -dna -pl -tis -suf -lcp -v -parts 4 -db MH0001.trimmed.fa -indexname MH0001
	gt tallymer mkindex -mersize 32 -minocc 1 -maxocc 1 -esa MH0001 -indexname MH0001-reads -counts -pl

	# hash table size: 1e8
	python filter-inexact-all_hs.py MH0001.trimmed.fa MH0001.trimmed.fa.out.e8 100000000
	python filter-inexact-all_hs.py MH0001.trimmed.fa.out.e8 MH0001.trimmed.fa.out2.e8 100000000
	python filter-inexact-all_hs.py MH0001.trimmed.fa.out2.e8 MH0001.trimmed.fa.out3.e8 100000000
	python filter-inexact-all_hs.py MH0001.trimmed.fa.out3.e8 MH0001.trimmed.fa.out4.e8 100000000

	gt tallymer search -output qseqnum qpos counts -tyr MH0001-reads  -q MH0001.trimmed.fa.out.e8 >MH0001.trimmed.fa.out.e8.unique
	gt tallymer search -output qseqnum qpos counts -tyr MH0001-reads  -q MH0001.trimmed.fa.out2.e8 >MH0001.trimmed.fa.out2.e8.unique
	gt tallymer search -output qseqnum qpos counts -tyr MH0001-reads  -q MH0001.trimmed.fa.out3.e8 >MH0001.trimmed.fa.out3.e8.unique
	gt tallymer search -output qseqnum qpos counts -tyr MH0001-reads  -q MH0001.trimmed.fa.out4.e8 >MH0001.trimmed.fa.out4.e8.unique

	more MH0001.trimmed.fa.out.e8.unique |cut -f 1|sort -u >MH0001.trimmed.fa.out.e8.unique.sequence_id
	more MH0001.trimmed.fa.out2.e8.unique |cut -f 1|sort -u >MH0001.trimmed.fa.out2.e8.unique.sequence_id
	more MH0001.trimmed.fa.out3.e8.unique |cut -f 1|sort -u >MH0001.trimmed.fa.out3.e8.unique.sequence_id
	more MH0001.trimmed.fa.out4.e8.unique |cut -f 1|sort -u >MH0001.trimmed.fa.out4.e8.unique.sequence_id

	# hash table size: 1e9
	python filter-inexact-all_hs.py MH0001.trimmed.fa MH0001.trimmed.fa.out 1000000000
	python filter-inexact-all_hs.py MH0001.trimmed.fa.out MH0001.trimmed.fa.out2 1000000000
	python filter-inexact-all_hs.py MH0001.trimmed.fa.out2 MH0001.trimmed.fa.out3 1000000000
	python filter-inexact-all_hs.py MH0001.trimmed.fa.out3 MH0001.trimmed.fa.out4 1000000000
	% @CTB use filter-abund instead.
	% basically, load-into-counting -x ... -N ... -k ... khfile seqfile
	% then filter-abund.py khfile seqfile

	gt tallymer search -output qseqnum qpos counts -tyr MH0001-reads  -q MH0001.trimmed.fa.out >MH0001.trimmed.fa.out.unique
	gt tallymer search -output qseqnum qpos counts -tyr MH0001-reads  -q MH0001.trimmed.fa.out2 >MH0001.trimmed.fa.out2.unique
	gt tallymer search -output qseqnum qpos counts -tyr MH0001-reads  -q MH0001.trimmed.fa.out3 >MH0001.trimmed.fa.out3.unique
	gt tallymer search -output qseqnum qpos counts -tyr MH0001-reads  -q MH0001.trimmed.fa.out4 >MH0001.trimmed.fa.out4.unique

	more MH0001.trimmed.fa.out.unique |cut -f 1|sort -u >MH0001.trimmed.fa.out.unique.sequence_id
	more MH0001.trimmed.fa.out2.unique |cut -f 1|sort -u >MH0001.trimmed.fa.out2.unique.sequence_id
	more MH0001.trimmed.fa.out3.unique |cut -f 1|sort -u >MH0001.trimmed.fa.out3.unique.sequence_id
	more MH0001.trimmed.fa.out4.unique |cut -f 1|sort -u >MH0001.trimmed.fa.out4.unique.sequence_id

	# get the number of remaining reads and number of bad reads

	wc *.sequence_id >bad_reads.wc 
	wc MH0001.trimmed.fa *.out *.out? *.out.e8 *.out?.e8 >remaining_reads.wc
