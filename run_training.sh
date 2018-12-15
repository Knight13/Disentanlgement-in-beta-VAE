#!/usr/bin/env bash

"TF_MIN_GPU_MULTIPROCESSOR_COUNT" = "3"
"CUDA_VISIBLE_DEVICES" = "0, 1"

cd src

python training_script.py --encoder_type deepmind_enc --data_dir ../../data/CelebA/train/ --bottleneck 32 --val_split 0.2 \
--image_size 64 --train_batch_size 64 --val_batch_size 32 --optimizer ADAM --base_learning_rate 5e-4 --num_epochs 75 \
--scheduler_epoch 5 --decay_factor 0.1 --vae_gamma 1000 --capacity 25 --max_epochs 50 --num_workers 4