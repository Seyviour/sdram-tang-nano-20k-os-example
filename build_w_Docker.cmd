@echo off

@REM Pull the Docker image
docker pull fjpolo/fpgatools_ubuntu22.04_oss-cad-suite_fv:202501061639

@REM Run the Docker container and execute the specified commands
docker run -v %cd%:/workspace -it fjpolo/fpgatools_ubuntu22.04_oss-cad-suite_fv:202501061639 -c "source /oss-cad-suite/environment;cd /workspace/src;make sdram.fs"
