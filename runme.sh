STOPTHRESH="100"
T="500"
NSAMP="1000"

UBERJAR="rhizome-1.0.0-SNAPSHOT-standalone.jar"
HEAPFLAG="-Xmx16g"
RUNCMD="java -jar"

COUNT="--operation count"
STOP="--operation stop --stopthresh $STOPTHRESH"
LDA="--operation lda --T $T --nsamp $NSAMP"
TURBO="--operation turbo --T $T"
RELATED="--operation related --T $T"
SEMCO="--operation semco --T $T"

echo "$RUNCMD $HEAPFLAG $UBERJAR $STOP"
$RUNCMD $HEAPFLAG $UBERJAR $STOP

echo "$RUNCMD $HEAPFLAG $UBERJAR $LDA"
$RUNCMD $HEAPFLAG $UBERJAR $LDA

echo "$RUNCMD $HEAPFLAG $UBERJAR $TURBO"
$RUNCMD $HEAPFLAG $UBERJAR $TURBO

echo "$RUNCMD $HEAPFLAG $UBERJAR $RELATED"
$RUNCMD $HEAPFLAG $UBERJAR $RELATED

echo "$RUNCMD $HEAPFLAG $UBERJAR $SEMCO"
$RUNCMD $HEAPFLAG $UBERJAR $SEMCO
