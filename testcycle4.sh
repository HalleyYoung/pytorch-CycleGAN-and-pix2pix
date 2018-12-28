#!/bin/bash                                                                     
#SBATCH --get-user-env                                                          
#SBATCH --partition=g_deviet                                                    
#SBATCH --gres=gpu:1                                                            
#SBATCH --mem=40000M                                                            

srun python test.py --dataroot ./datasets/facades_third_prog --name facades_third_prog_pix2pix --model pix2pix --input_nc 3 --output_nc 3
