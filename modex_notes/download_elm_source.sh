#!/bin/bash

download_dir=$1
source_loc=https://github.com/FASSt-simulation/simulation_containers/blob/main/docker/elm/elm_v2-for-ngee/e3sm_source/e3sm_v2.0.0_ngee.tar.gz?raw=true
#source_loc=https://github.com/FASSt-simulation/simulation_containers/blob/main/docker/elm/elm_v2-for-ngee/e3sm_source/e3sm_v2.0.0_ngee.tar.gz

echo "*** Downloading ELM model source to: ${download_dir} ***"

cd ${download_dir}
wget -v ${source_loc}
mv 'e3sm_v2.0.0_ngee.tar.gz?raw=true' e3sm_v2.0.0_ngee.tar.gz

tar -zxvf ${download_dir}/e3sm_v2.0.0_ngee.tar.gz

rm e3sm_v2.0.0_ngee.tar.gz

#cd ${download_dir}
echo "*** Download Complete ***"
