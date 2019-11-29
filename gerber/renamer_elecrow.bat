@echo off

set PROJECT="%1"

set company="_elecrow"
set OUTPUT="%PROJECT%%company%"
mkdir %OUTPUT%

copy "%PROJECT%"-F_Cu.gtl "%OUTPUT%"\"%PROJECT%".GTL
copy "%PROJECT%"-B_Cu.gbl "%OUTPUT%"\"%PROJECT%".GBL
copy "%PROJECT%"-F_Mask.gts "%OUTPUT%"\"%PROJECT%".GTS
copy "%PROJECT%"-B_Mask.gbs "%OUTPUT%"\"%PROJECT%".GBS
copy "%PROJECT%"-F_SilkS.gto "%OUTPUT%"\"%PROJECT%".GTO
copy "%PROJECT%"-B_SilkS.gbo "%OUTPUT%"\"%PROJECT%".GBO
copy "%PROJECT%"-NPTH.drl "%OUTPUT%"\"%PROJECT%"-NPTH.TXT
copy "%PROJECT%"-PTH.drl "%OUTPUT%"\"%PROJECT%"-PTH.TXT
copy "%PROJECT%"-Edge_Cuts.gm1 "%OUTPUT%"\"%PROJECT%".GML