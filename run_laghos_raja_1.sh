LAGHOS_DIR=build/Laghos/raja
cd ${LAGHOS_DIR}
git checkout 142d557fa0d902ec1f38269e06e75448c10c31fd
make debug NV_ARCH=-arch=sm_70 CUDA_DIR=$CUDA_HOME MPI_HOME=$MPI_HOME RAJA_DIR=`pwd`/../../raja-install -j8
cd -
time mpirun -np 1 ${LAGHOS_DIR}/laghos -p 0 -m ${LAGHOS_DIR}/../data/square01_quad.mesh -rs 3 -tf 0.75 -pa -cuda



