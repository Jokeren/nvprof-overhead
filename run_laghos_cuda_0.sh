LAGHOS_DIR=build/Laghos/cuda
time mpirun -np 1 ${LAGHOS_DIR}/laghos -p 0 -m ${LAGHOS_DIR}/../data/square01_quad.mesh -rs 3 -tf 0.75 -pa

