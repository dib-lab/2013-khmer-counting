#! /bin/bash
jellyfish query $1 -s $2 > $1.search.out
echo found `wc -l $1.search.out | cut -f1 -d\  ` k-mers from $2

