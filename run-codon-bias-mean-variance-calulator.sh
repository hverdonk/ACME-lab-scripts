#!/bin/bash

bpsh 3 python3 python/codon-bias-calculator.py \
-p NEUTRAL SELECTED \
--ref Escherichia_coli \
-d enterobacteria_15species_alignments \
-f enterobacteria_15species_alignments-MSS/GA-results/enterobacteria-subsamples/enterobacteria-subsample1.tsv \
-o enterobacteria-codon-bias.csv
