#!/bin/bash --login

#SBATCH --job-name=python_test
#SBATCH --ntasks=1
#SBATCH --time=00:10:00
#SBATCH --account=ta157-prakhars
#SBATCH --partition=standard
#SBATCH --qos=standard

source /work/ta157/ta157/prakhars962/venv/bin/activate
python DeepINN/test.py
