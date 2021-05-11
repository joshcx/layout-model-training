#!/bin/bash

cd ../tools

python train_net.py \
    --dataset_name          publaynet \
    --json_annotation_train ../data/publaynet/annotations/annotations-train.json \
    --image_path_train      ../data/publaynet/raw/train \
    --json_annotation_val   ../data/publaynet/annotations-val.json \
    --image_path_val        ../data/publaynet/raw/val \
    --config-file           ../configs/publaynet/faster_rcnn_R_50_FPN_3x.yml \
    OUTPUT_DIR  ../outputs/publaynet/faster_rcnn_R_50_FPN_3x.yml/ \
    SOLVER.IMS_PER_BATCH 2 
