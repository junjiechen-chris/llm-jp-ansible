## Ansible Scripts for Deploying Slurm on LLM-jp Clusters

### Howto
This script contains the ansible script for deploying slurm on the LLM-jp cluster. With the correct configuration file, the deployment is simple. Just run
```
ansible-playbook -i inventory slurm-install.yml
```
Where `inventory` is the description file for all nodes in the cluster and `slurm-install.yml` is the ansible playbook for deploying the slurm cluster.

