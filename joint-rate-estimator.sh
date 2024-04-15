#PBS -S /bin/bash
#PBS -q epyc
#PBS -l nodes=1:ppn=12
#PBS -l mem=15gb
#PBS -l walltime=72:00:00
#PBS -N joint-rates-sacch-500align-3
#PBS -o qsub/out/joint-rates-sacch-500align-3.out
#PBS -e qsub/err/joint-rates-sacch-500align-3.err
#PBS -V
#PBS -m a
#PBS -M tuo90294@temple.edu

source /etc/profile.d/modules.sh 
module unload openmpi/gnu/3.1.6
module load openmpi/gnu/4.1.0

cd /data/shares/veg/hverdonk

# hyphy /usr/local/share/hyphy/TemplateBatchFiles/MSS-joint-fitter.bf \
mpirun /home/hverdonk/hyphy-develop/HYPHYMPI /home/hverdonk/hyphy-develop/res/TemplateBatchFiles/MSS-joint-fitter.bf \
--model SynREVCodon \
--filelist old-joint-fit-align-lists/saccharomyces_500RandomAlign_3.txt  \
--output MSS-results/empirical-validation/saccharomyces/20240408-sacch-500RandomAlignments-SynREVCodonjointfit-3.json # \
# ENV="TOLERATE_NUMERICAL_ERRORS=1;" 
