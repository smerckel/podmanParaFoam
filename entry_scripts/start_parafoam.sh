#!/bin/bash

source /opt/openfoam10/etc/bashrc

cd $HOME/case
paraFoam > paraFoamErrorLog.txt
