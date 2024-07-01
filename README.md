## Ansible Scripts for Deploying Slurm on LLM-jp Clusters

### Howto
This script contains the ansible script for deploying slurm on the LLM-jp cluster. With the correct configuration file, the deployment is simple. Just run
```
ansible-playbook -i inventory slurm-install.yml
```
Where `inventory` is the description file for all nodes in the cluster and `slurm-install.yml` is the ansible playbook for deploying the slurm cluster.

#### Steps
The `slurm-install` playbook consists of the following steps
- ensure the related packages are installed in all nodes (including both the control and the compute nodes)
- create and distribute the munge key through which the control/compute node communicate
- distribute configuration files `slurm.conf`, `gres.conf`, `prolog.sh`, `cgroup.conf`, and `hosts`
  - `slurm.conf` is the slurm configuration file. All nodes MUST share the same configuration file
  - `gres.conf` is the generic resource definition file. We control the GPU usage with this file
  - `prolog.sh` is the pre-execution script file.
  - `cgroup.conf` is the cgroup configuration file.
  - `hosts` is the ethernet definition file. This should be distributed to the `/etc/hosts`.
- restart the `slurmd` services in all nodes
- restart the `slurmctld` service in the control node


  
     
