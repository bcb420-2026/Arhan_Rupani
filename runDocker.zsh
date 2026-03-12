#!/bin/zsh
open -a Docker.app
echo Docker app opened with status $?
sleep 7 
docker run -e PASSWORD=changeit --rm -v /Users/arhanrupani/Desktop/Winter_26/BCB420:/home/rstudio/projects -p 8787:8787 risserlin/bcb420-base-image:winter2026-arm64
echo BCB420 docker container created with status $?

# After running this, open Rstudio from local host