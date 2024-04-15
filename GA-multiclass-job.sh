#PBS -S /bin/bash
#PBS -q epyc2
#PBS -l nodes=1:ppn=20
#PBS -l mem=16gb
#PBS -l walltime=72:00:00
#PBS -N GA-2class-caenor
#PBS -o qsub/out/GA-2class-caenor-hyphy_v2.5.55.out
#PBS -e qsub/err/GA-2class-caenor-hyphy_v2.5.55.err
#PBS -V
#PBS -m a
#PBS -M tuo90294@temple.edu

source /etc/profile.d/modules.sh 
module unload openmpi/gnu/3.1.6
module load openmpi/gnu/4.1.0
NUM_CLASSES="2"

cd /data/shares/veg/hverdonk
mkdir -p /data/shares/veg/hverdonk/caenorhabditis_9species_alignments-MSS/GA-${NUM_CLASSES}classes-results/caenorhabditis-${NUM_CLASSES}class-subsamples
mpirun /home/hverdonk/hyphy-develop/HYPHYMPI /home/hverdonk/hyphy-develop/res/TemplateBatchFiles/MSS-selector.bf \
--ic BIC \
--classes ${NUM_CLASSES} \
--filelist /data/shares/veg/hverdonk/caenorhabditis_9species_alignments-MSS/subsamples/caenorhabditis-${NUM_CLASSES}class-subsample1.txt \
--output /data/shares/veg/hverdonk/caenorhabditis_9species_alignments-MSS/GA-${NUM_CLASSES}classes-results/caenorhabditis-${NUM_CLASSES}class-subsamples/caenorhabditis-${NUM_CLASSES}class-subsample1.json
