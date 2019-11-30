export CUPTI_DEVICE_NUM=1
export CUPTI_SAMPLING_PERIOD=5

PC_SAMPLING_DIR=build/cupti_test/cupti-preload/pc_sampling
LAGHOS_DIR=build/Laghos/cuda
time mpirun -np 1 ${PC_SAMPLING_DIR}/enablesampling ${LAGHOS_DIR}/laghos -p 0 -m ${LAGHOS_DIR}/../data/square01_quad.mesh -rs 1 -tf 0.05 -pa
