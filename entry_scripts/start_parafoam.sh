#!/bin/bash

caseDir=$1

echo "casedir:" $caseDir

export USER=root
source /opt/openfoam10/etc/bashrc

echo "Going to change to directory:" $FOAM_RUN
cd $FOAM_RUN

echo $PWD

#cd mbc && touch *.C && wmake

cd $FOAM_RUN

cd $caseDir

/opt/openfoam10/bin/paraFoam > paraFoamErrorLog.txt
 echo "In case of unexpected behaviour, check paraFoamErrorLog.txt..."
