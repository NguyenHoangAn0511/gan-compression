#!/usr/bin/env bash
python train.py --dataroot database/vangogh2photo \
  --model cycle_gan \
  --netG resnet_9blocks \
  --log_dir logs/cycle_gan/vangogh2photo/full \
  --real_stat_A_path real_stat/vangogh2photo.npz \
  --real_stat_B_path real_stat/vangogh2photo.npz
