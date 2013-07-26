#! /usr/bin/env python
import khmer

triples = [('round0.1e7.hist', 'round0.2e8.hist',
            'ecoli_ref.fastq.keep.fq.kh'),
           ('round1.1e7.hist', 'round1.2e8.hist',
            'ecoli_ref.fastq.keep.abundfilt.fq.kh'),
           ('round2.1e7.hist', 'round2.2e8.hist',
            'ecoli_ref.fastq.keep.abundfilt.abundfilt.fq.kh'),
           ('round3.1e7.hist', 'round3.2e8.hist',
            'ecoli_ref.fastq.keep.abundfilt.abundfilt.abundfilt.fq.kh'),
           ('round4.1e7.hist', 'round4.2e8.hist',
            'ecoli_ref.fastq.keep.abundfilt.abundfilt.abundfilt.abundfilt.fq.kh'),]

def read_1count_from_hist(filename):
    for line in open(filename):
        if line.startswith('1 '):
            count = line.split()[1]
            count = int(count)
            return count
    assert 0

for (small, big, kh_filename) in triples:
    small_count = read_1count_from_hist(small)
    big_count = read_1count_from_hist(big)

    kh = khmer.load_counting_hash(kh_filename)
    fp_rate = khmer.calc_expected_collisions(kh)

    print small_count, big_count, fp_rate
