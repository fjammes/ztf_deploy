set -e
set -x

DATE=20180309
DATA_DIR="$HOME/tmp"

REMOTE_SERVER="sedmdrp@pharos.caltech.edu"
REMOTE_PATH="/scr2/sedmdrp/redux/test/redux/$DATE"


# Compute file names for crr_b_`ALL_IFU_NOT_CALIB` 
rsync -vP "$REMOTE_SERVER":"$REMOTE_PATH/what.list" "$DATA_DIR"
SUFFIXES=$(cat "$DATA_DIR/what.list" | grep -v "Calib" | sed -e 's/^[ \t]*//' | cut -d' ' -f1)
for s in 'dome.fits' '??.fits' $SUFFIXES
do
    FILES="crr_b_${s} $FILES"
done

for f in 'dome.fits' '??.fits' $FILES
do
    rsync -vP "$REMOTE_SERVER":"${REMOTE_PATH}/${f}" "$DATA_DIR"
done
