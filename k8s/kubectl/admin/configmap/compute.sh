set -e
set -x

export SEDMREDUXPATH="/mnt/data/redux"

DATE=20180306

NPROC=$(nproc)

date
echo "Computing data from $DATE using $NPROC cores"

ccd_to_cube.py "$DATE" --rebuild --tracematch --hexagrid

date
echo "derive_wavesolution"
derive_wavesolution.py "$DATE" --nsub "$NPROC"

date
echo "ccd_to_cube --flat"
ccd_to_cube.py "$DATE" --flat

date
