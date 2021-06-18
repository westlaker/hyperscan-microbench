BOOST_PATH=`pwd`
wget https://boostorg.jfrog.io/artifactory/main/release/1.74.0/source/boost_1_74_0.tar.gz && \
tar xzvf boost_1_74_0.tar.gz

git clone https://github.com/VectorCamp/vectorscan && \
cd vectorscan && \
git checkout v5.4.2+vectorscan && \
mkdir build && \
cd build/ && \
cmake -DBOOST_ROOT=$BOOST_PATH/boost_1_74_0/ .. 
make 
