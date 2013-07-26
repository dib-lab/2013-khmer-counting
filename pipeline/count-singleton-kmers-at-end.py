#! /usr/bin/env python
import sys
import os
import khmer
import threading
from khmer.thread_utils import ThreadedSequenceProcessor, verbose_loader
from khmer.counting_args import build_construct_args, report_on_config
from khmer.threading_args import add_threading_args

import screed

###

DEFAULT_CUTOFF = 2

def main():
    parser = build_construct_args()
    add_threading_args(parser)

    parser.add_argument('datafile')
    
    args = parser.parse_args()
    report_on_config(args)

    K = args.ksize
    HT_SIZE = args.min_hashsize
    N_HT = args.n_hashes
    n_threads = int(args.n_threads)

    config = khmer.get_config()
    bufsz = config.get_reads_input_buffer_size()
    config.set_reads_input_buffer_size(n_threads * 64 * 1024)

    print 'making hashtable'
    ht = khmer.new_counting_hash(K, HT_SIZE, N_HT, n_threads)

    filename = args.datafile
    
    ### first, load reads into hash table
    rparser = khmer.ReadParser(filename, n_threads)
    threads = []
    print 'consuming input, round 1 --', filename
    for tnum in xrange(n_threads):
        t = \
            threading.Thread(
                target=ht.consume_fasta_with_reads_parser,
                args=(rparser, )
            )
        threads.append(t)
        t.start()

    for t in threads:
        t.join()

    fp_rate = khmer.calc_expected_collisions(ht)
    print 'fp rate estimated to be %1.3f' % fp_rate

    ### now, count.
    total = 0
    total_unique = 0
    for n, record in enumerate(screed.open(filename)):
        total += 1
        last_kmer = record.sequence[-K:]
        count = ht.get(last_kmer)
        if count == 1:
            total_unique += 1

    print 'singletons: %d unique; of %d total; %.3f' % \
        (total_unique, total, total_unique/float(total))

if __name__ == '__main__':
    main()
