#!/usr/bin/env bash
python train.py --dataroot database/vangogh2photo \
  --model cycle_gan \
  --log_dir logs/cycle_gan/vangogh2photo/mobile \
  --real_stat_A_path real_stat/vangogh2photo_A.npz \
  --real_stat_B_path real_stat/vangogh2photo_B.npz
