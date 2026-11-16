#!/bin/bash

module_available=($(ls -l *.yaml | awk -F ' ' '{print $NF}' | cut -d "." -f1))

backend_list=("catalogue" "user" "cart" "shipping" "payment")

for module in "${module_available[@]}";
do
    if [[ " ${backend_list[@]} " =~ " ${module} " ]];then
        echo "${module}.yaml is available"
    fi
done 