#!/bin/bash

# Pull the Docker image
docker pull fjpolo/fpgatools_ubuntu22.04_oss-cad-suite_fv:202501061639

# Run the Docker container and execute the specified commands
docker run -v "$(pwd)":/workspace -it fjpolo/fpgatools_ubuntu22.04_oss-cad-suite_fv:202501061639 /bin/bash /workspace/scripts/build_sdram_fs.sh
