# TMUX Cheatsheets
- Create a new session: `tmux new -s <session_name>`
- Attach to a session: `tmux attach -t <session_name>`
- Detach from a session: `Ctrl-b d`
- List sessions: `tmux ls`
- Kill a session: `tmux kill-session -t <session_name>`

# UV Cheatsheets 
- Create a new environment: `uv venv`/ `uv venv --python 3.11`
- Activate the environment: `source .venv/bin/activate`
- Deactivate the environment: `deactivate`
- Install packages: `uv pip install <package_name>`
- Run a Python script: `uv run python <script.py>`
# SLURM Cheatsheets
Submit a job: `sbatch <job_file>`
- See example job file: [train_gpt2.sbatch](./train_gpt2.sbatch)

Check job status: `squeue -u <username>`
- Show jobs with GPU allocation: `squeue -o "%.18i %.9P %.8j %.8u %.2t %.10M %.6D %.20R %b"`

Cancel a job: `scancel <job_id>`

Allocate a GPU (e.g.): `salloc <allocation_options>`
- For example: `salloc --partition=commons --gres=gpu:h200:1 --cpus-per-task=16 --mem=128G --time=1-00:00:00`
