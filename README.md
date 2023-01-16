# podmanParaFoam

A build-recipe for OpenFoam's paraFoam viewer to be run in a container.

## Background

In my daily work I use Fedora Linux. Occasionally I use OpenFoam for some CFD modelling. OpenFoam is offered as source code to complile, 
as packaged binaries for Ubuntu, and as Docker containers for other flavours of Linux. I prefer to access the OpenFoam software through the source code 
compiled for my machine. Compiling the OpenFoam solvers is usually not a big issue, but to compile a patched version of the third-party viewer paraview
provides me lots of trouble. Running paraFoam in a podman container gives me the workflow I like, without the struggle to compile paraFoam/paraview.

## The solution

This repository contains a Dockerfile that can be build with podman, using the script `build.sh`. This dockerfile creates an image based on a minimalistic
Ubuntu image, and installs all what is needed to install the Ubuntu packaged binaries for OpenFoam. A wrapper script around podman to run a container, 
executing the paraFoam executable is provided as paraFoam, and could be copied into a directory that is in $PATH. In this way paraFoam can be run as if it
were compiled on the local system.
