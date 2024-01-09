#!/bin/bash

podman build -t openfoam .

cp paraFoam $HOME/.local/bin
cp paraFoam-debug $HOME/.local/bin
