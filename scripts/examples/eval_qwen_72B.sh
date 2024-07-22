#!/bin/bash

ngpu=4
save_dir="eval_results/"
global_record_file="eval_results/eval_record_collection.csv"
model="Qwen/Qwen2-72B-Instruct"
selected_subjects="all"
gpu_util=1.0

export CUDA_VISIBLE_DEVICES="0,1,2,3"
python evaluate_from_local.py \
    --selected_subjects $selected_subjects \
    --ngpu $ngpu \
    --save_dir $save_dir \
    --model $model \
    --global_record_file $global_record_file \
    --gpu_util $gpu_util \
    --batch_size 1
