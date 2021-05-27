#!/usr/bin/env bash
python test.py --dataroot database/vangogh2photo/valA \
  --dataset_mode single \
  --results_dir results-pretrained/cycle_gan/vangogh2photo/supernet \
  --ngf 32 --netG super_mobile_resnet_9blocks \
  --config_str 16_16_32_16_32_32_16_16 \
  --restore_G_path logs/cycle_gan/vangogh2photo/supernet/checkpoints/latest_net_G.pth \
  --need_profile \
  --real_stat_path real_stat/vangogh2photo_B.npz
