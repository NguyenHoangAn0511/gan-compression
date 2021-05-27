#!/usr/bin/env bash
python test.py --dataroot database/vangogh2photo/valA \
  --dataset_mode single \
  --results_dir results-pretrained/cycle_gan/vangogh2photo/distill \
  --ngf 32 --netG mobile_resnet_9blocks \
  --restore_G_path logs/cycle_gan/vangogh2photo/distill/checkpoints/latest_net_G.pth \
  --need_profile \
  --real_stat_path real_stat/vangogh2photo_B.npz
