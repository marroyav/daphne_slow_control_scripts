cd ../DAQ_NP04_HD_DEV_AREA
source env.sh

addresses=("0x1a" "0x1b" "0x1d" "0x1f")

for a in "${addresses[@]}"
do
    dtsbutler mst MASTER_PC059_1 align apply-delay $a 0 0 -m 1
done

for a in "${addresses[@]}"
do
    dtsbutler mst MASTER_PC059_1 align toggle-tx $a --on > /dev/null
    dtsbutler mst MASTER_PC059_1 read-ept-reg $a 0x71 1 0
    dtsbutler mst MASTER_PC059_1 align toggle-tx $a --off > /dev/null
done

cd -
