#!/bin/bash
#SBATCH --job-name=gpt-train
#SBATCH --partition=commons
#SBATCH --output=logs/train_%j.out
#SBATCH --error=logs/train_%j.err
#SBATCH --time=1-00:00:00              
#SBATCH --nodes=1                    
#SBATCH --ntasks-per-node=1         
#SBATCH --gres=gpu:h200:4                 
#SBATCH --cpus-per-task=32           
#SBATCH --mem=0                      
#SBATCH --mail-user=<YOUR_EMAIL>
#SBATCH --account=<YOUR_ACCOUNT>

# Create logs directory if it doesn't exist
mkdir -p logs

# Print job information
echo "Job ID: $SLURM_JOB_ID"
echo "Node: $SLURM_NODELIST"
echo "Start time: $(date)"
echo "Working directory: $(pwd)"

# Activate uv environment
source nanogpt/bin/activate

# Set environment variables for optimal performance
export NCCL_DEBUG=INFO
export PYTHONUNBUFFERED=1

# Run training with torchrun
torchrun --standalone --nproc_per_node=4 train.py config/train_gpt2.py

echo "End time: $(date)"

