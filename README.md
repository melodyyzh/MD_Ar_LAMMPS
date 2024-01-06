## Molecular Dynamics Simulation of Argon Particles using LAMMPS

This project focus on the NVT simulation of Argon particles in a FCC lattice using LAMMPS. I ran simulation at various reduced density and evaluate properties including potential and kinetic energy, conserved quantity, equilibrium state via autocorrelation function, reduced pressure, radial distribution function, and mean square displacement. I compared these properties with results obtained from Monte Carlo simulation for a comprehensive analysis between the two simulation approaches. 

## Content
- `LJ.in`: LAMMPS input file that sets up the initial FCC lattice structure for Argon particles and runs NVT simulation
- `run_job.cmd`: a Bash command file that handles job submission to the SLURM job scheduling system 
- `walltime.sh`: a shell script that extracts the walltime of each simulation for analysis and optimization purposes

## Build & Execute
Refer to the `run_job.cmd` file for information about the required modules.

## Credit
- This project was developed as part of the ChE696: Simulation of Condensed Matter System
- Initial code templates were provided by our instructor, Dr. Rebecca Lindsey.
