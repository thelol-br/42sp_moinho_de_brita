#!/bin/bash
# author aguilher (42 camper)

# check folders
echo "====== BEGIN EVAL ======"
echo "=== My folders are:==="
ls -Al */*

# Ex01
export FT_USER=student
export FT_LINE1=7
export FT_LINE2=15

for pathex in $(ls */{*.sh,*MaRViN*} ); do
        ex=$(echo $pathex | sed 's:\/[a-z]*.*::g')  

        echo -e "\n=== My ex. $pathex ==="
        if [ $ex = ex05 ]; then
                cd ex05
                ls -lRa *MaRViN* | cat -e
                cd ..
        elif [ $ex = ex08 ]; then
                # Ex08 chelou

                echo -e "\n### Ex08 Test00 ###"
                export $(echo "FT_NBR1=\\'?\"\\\"'\\")
                export FT_NBR2=rcrdmddd
                sh $pathex

                echo -e "\n### Ex08 Test01 ###"
                export $(echo 'FT_NBR1=\"\"!\"\"!\"\"!\"\"!\"\"!\"\"')
                export FT_NBR2=dcrcmcmooododmrrrmorcmcrmomo
                sh $pathex
        else
                sh $pathex
        fi
done
