# Gello Cheatsheets
GELLO is a general, low-cost, and intuitive teleoperation framework for robot manipulators. Forked repos: https://github.com/WeihangGuo/gello_software

There are several options to install and run the demo. What I used is: 
- Create a virtual environment using uv. 
- Manual `gello_agent` setup ([here](https://github.com/WeihangGuo/gello_software?tab=readme-ov-file#1-manual-gello_agent-setup))
- Create Custom YAML Configurations (see [black_ur_sim](https://github.com/WeihangGuo/gello_software/blob/main/configs/black_ur_sim.yaml) and [pink_ur_sim](https://github.com/WeihangGuo/gello_software/blob/main/configs/pink_ur_sim.yaml))
- Run `python experiments/launch_yaml.py --left-config_path configs/<YOUR_CONFIG_FILE>.yaml` to launch the teleoperation. **Run it in the simultion first to check if joint offsets and joint signs are correct**. Otherwise you may hurt the robot. 
- Run `python experiments/launch_yaml.py --left-config_path configs/<YOUR_CONFIG_FILE>.yaml --right-config_path configs/<YOUR_CONFIG_FILE>.yaml` to launch the teleoperation for both hands.