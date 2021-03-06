LAGHOS_DIR=build/Laghos/cuda

export CUPTI_PERFWORKS_SAMPLER=1
time mpirun -np 1 nvprof -a pc_sampling --pc-sampling-period 5 --export-profile tmp.nvvp ${LAGHOS_DIR}/laghos -p 0 -m ${LAGHOS_DIR}/../data/square01_quad.mesh -rs 1 -tf 0.05 -pa
rm tmp.nvvp
unset CUPTI_PERFWORKS_SAMPLER
