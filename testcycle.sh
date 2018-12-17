#!/bin/bash
#SBATCH --get-user-env
#SBATCH --partition=g_deviet
#SBATCH --gres=gpu:1
#SBATCH --mem=40000M 

srun python test.py --dataroot ./datasets/facades_third --name facades_third_cyclegan --model cycle_gan --input_nc 3 --output_nc 3
