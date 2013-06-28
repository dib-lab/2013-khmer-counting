#! /bin/bash
gt tallymer search -tyr $1 -q $2 -strand fp -output counts > $1.tally.out
echo found `wc -l $1.tally.out | cut -f1 -d\  ` k-mers from $2

