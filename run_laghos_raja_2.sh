LAGHOS_DIR=build/Laghos/raja
cd ${LAGHOS_DIR}
git checkout 1a86c88ab4e3005e2b0fee8e97615a4652fe2d96
make debug NV_ARCH=-arch=sm_70 CUDA_DIR=$CUDA_HOME MPI_HOME=$MPI_HOME RAJA_DIR=`pwd`/../../raja-install -j8
cd -
time mpirun -np 1 ${LAGHOS_DIR}/laghos -p 0 -m ${LAGHOS_DIR}/../data/square01_quad.mesh -rs 3 -tf 0.75 -pa -cuda
