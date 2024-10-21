#!/bin/bash --login

#SBATCH --job-name=python_test
#SBATCH --time=00:10:00
#SBATCH --account=ta157-prakhars
#SBATCH --partition=gpu
#SBATCH --qos=gpu-shd
#SBATCH --output=output.txt
#SBATCH --error=error.txt
#SBATCH --gres=gpu:1


# matplotlib's default path is in home which is not writable
export MPLCONFIGDIR=/work/ta157/ta157/prakhars962/.matplotlib

source /work/ta157/ta157/prakhars962/venv/bin/activate
python DeepINN/test.py

