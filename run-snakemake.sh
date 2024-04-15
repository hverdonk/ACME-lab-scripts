#!/bin/bash

snakemake \
-s snakefile-SLAC-caenor \
--printshellcmds \
--keep-going \
--rerun-incomplete \
--cluster-config cluster.json \
--cluster-cancel "qdel" \
--cluster "qsub -q epyc -V -l nodes={cluster.nodes}:ppn={cluster.ppn} -o qsub/out/ -e qsub/err/" \
--jobs 100
