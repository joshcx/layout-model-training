#!/bin/bash

cd ../tools

python train_net.py \
    --dataset_name          publaynet \
    --json_annotation_train ../data/publaynet/annotations/annotations-train.json \
    --image_path_train      ../data/publaynet/raw/train \
    --json_annotation_val   ../data/publaynet/annotations-val.json \
    --image_path_val        ../data/publaynet/raw/val \
    --config-file           ../configs/publaynet/mask_rcnn_X_101_32x8d_FPN_3x \
    OUTPUT_DIR  ../outputs/publaynet/mask_rcnn_X_101_32x8d_FPN_3x/ \
    SOLVER.IMS_PER_BATCH 2 
