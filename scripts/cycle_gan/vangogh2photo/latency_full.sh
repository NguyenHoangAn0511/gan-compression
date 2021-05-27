#!/usr/bin/env bash
python latency.py --dataroot database/vangogh2photo/valA \
  --dataset_mode single \
  --results_dir results-pretrained/cycle_gan/vangogh2photo/full \
  --ngf 64 --netG resnet_9blocks \
  --restore_G_path pretrained/cycle_gan/vangogh2photo/full/latest_net_G.pth \
  --need_profile \
  --real_stat_path real_stat/vangogh2photo_B.npz
