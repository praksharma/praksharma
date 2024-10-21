#!/bin/bash --login

#SBATCH --job-name=python_test
#SBATCH --ntasks=1
#SBATCH --time=00:10:00
#SBATCH --account=ta157-prakhars
#SBATCH --partition=standard
#SBATCH --qos=standard
#SBATCH --output=output.txt
#SBATCH --error=error.txt

# matplotlib's default path is in home which is not writable
export MPLCONFIGDIR=/work/ta157/ta157/prakhars962/.matplotlib

source /work/ta157/ta157/prakhars962/venv/bin/activate
python DeepINN/test.py

