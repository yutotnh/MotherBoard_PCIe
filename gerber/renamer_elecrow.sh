#!/bin/sh -x

# This script can rename KiCAD's gaber filename to elecrow's gaber filename format
# How to use
# ./renamer_elecrow.sh "PROJECT NAME(file name prefix)"


PROJECT="$1"

company="_elecrow"
OUTPUT="$PROJECT$company"
mkdir "$OUTPUT"

cp "$PROJECT"-F_Cu.gtl "$OUTPUT"/"$PROJECT".GTL
cp "$PROJECT"-B_Cu.gbl "$OUTPUT"/"$PROJECT".GBL
cp "$PROJECT"-F_Mask.gts "$OUTPUT"/"$PROJECT".GTS
cp "$PROJECT"-B_Mask.gbs "$OUTPUT"/"$PROJECT".GBS
cp "$PROJECT"-F_SilkS.gto "$OUTPUT"/"$PROJECT".GTO
cp "$PROJECT"-B_SilkS.gbo "$OUTPUT"/"$PROJECT".GBO
cp "$PROJECT"-NPTH.drl "$OUTPUT"/"$PROJECT"-NPTH.TXT
cp "$PROJECT"-PTH.drl "$OUTPUT"/"$PROJECT"-PTH.TXT
cp "$PROJECT"-Edge_Cuts.gm1 "$OUTPUT"/"$PROJECT".GML