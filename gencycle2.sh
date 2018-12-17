#!/bin/bash
#SBATCH --get-user-env
#SBATCH --partition=g_deviet
#SBATCH --gres=gpu:1
#SBATCH --mem=20000M 

srun python train.py --dataroot ./datasets/facades_third --name facades_third_cyclegan --model cycle_gan --display_id 0 --batch_size 2 --gpu_ids 0 --input_nc 3 --output_nc 3 --direction AtoB
