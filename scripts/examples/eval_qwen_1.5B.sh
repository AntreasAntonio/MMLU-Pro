#!/bin/bash

ngpu=1
save_dir="eval_results/"
global_record_file="eval_results/eval_record_collection.csv"
model="Qwen/Qwen2-1.5B-Instruct"
selected_subjects="all"
gpu_util=0.8

export CUDA_VISIBLE_DEVICES=1

python evaluate_from_local.py \
    --selected_subjects $selected_subjects \
    --ngpu $ngpu \
    --save_dir $save_dir \
    --model $model \
    --global_record_file $global_record_file \
    --gpu_util $gpu_util
