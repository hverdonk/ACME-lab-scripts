HOMEDIR="/data/shares/veg/hverdonk/MSS-results/empirical-validation/saccharomyces"

python3 python/parse-joint-fits.py \
--model "SynREVCodon" \
--json $HOMEDIR/20240402-sacch-500RandomAlignments-SynREVCodonjointfit-0.json \
--csv $HOMEDIR/20240402-sacch-500RandomAlignments-SynREVCodonjointfit-0
