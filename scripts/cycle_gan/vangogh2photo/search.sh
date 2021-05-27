#!/usr/bin/env bash
python search.py --dataroot database/vangogh2photo/valA \
  --dataset_mode single --phase train \
  --restore_G_path logs/cycle_gan/vangogh2photo/supernet/checkpoints/latest_net_G.pth \
  --output_path logs/cycle_gan/vangogh2photo/supernet/result.pkl \
  --ngf 32 --batch_size 32 \
  --config_set channels-32 \
  --real_stat_path real_stat/vangogh2photo_B.npz \
  --meta_path datasets/metas/vangogh2photo/train2A.meta
