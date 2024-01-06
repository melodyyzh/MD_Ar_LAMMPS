#!/bin/bash

#SBATCH -J sample_run          # A name for this job
#SBATCH --nodes 1              # Total number of "compute nodes" to request
#SBATCH --ntasks-per-node 1   # processors per node. This can be up to 36 for greatlakes.
#SBATCH -t 1:00:00             # Wall time in hh:mm:ss format
#SBATCH -p standard            # Submission queue
#SBATCH --mail-type=NONE       # Whether or not to send messages
#SBATCH -A che496s004f23_class # Charge bank
#SBATCH -V                     # Give verbose information
#SBATCH -o stdoutmsg           # Save all output that would be printed to the terminal to a file calld stdoutmsg


# Think of this as your "import" commands in a python script - they load certain libraries needed to run LAMMPS. LAMMPS is a compiled code - this means the specific modules we load below should be the same ones used to compile it. 

module load intel/2022.1.2
module load impi/2021.5.1
module load mkl/2022.0.2


# Create an "alias" for the full path to the LAMMPS executable (program)

LMP=/scratch/che496s004f23_class_root/che496s004f23_class/shared_data/bin/lmp_mpi


# Now run the task. The number speified after the little n is the total number of processors to use for the task. "Srun -n 1" means "run the following job on 1 processor".

srun -n 1 $LMP -i LJ.in > LJ.out


