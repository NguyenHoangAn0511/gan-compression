#!/usr/bin/env bash
python test.py --dataroot database/vangogh2photo/valA \
  --dataset_mode single \
  --results_dir results-pretrained/cycle_gan/vangogh2photo/legacy \
  --config_str 24_24_24_32_20_16 \
  --restore_G_path pretrained/cycle_gan/vangogh2photo/legacy/latest_net_G.pth \
  --need_profile \
  --real_stat_path real_stat/vangogh2photo_B.npz