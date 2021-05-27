#!/usr/bin/env bash
python distill.py --dataroot database/vangogh2photo \
  --dataset_mode unaligned \
  --distiller resnet \
  --log_dir logs/cycle_gan/vangogh2photo/distill \
  --gan_mode lsgan \
  --student_ngf 32 --ndf 64 \
  --restore_teacher_G_path logs/cycle_gan/vangogh2photo/mobile/checkpoints/latest_net_G_A.pth \
  --restore_pretrained_G_path logs/cycle_gan/vangogh2photo/mobile/checkpoints/latest_net_G_A.pth \
  --restore_D_path logs/cycle_gan/vangogh2photo/mobile/checkpoints/latest_net_D_A.pth \
  --real_stat_path real_stat/vangogh2photo_B.npz \
  --lambda_recon 10 \
  --lambda_distill 0.01 \
  --nepochs 100 --nepochs_decay 100 \
  --save_epoch_freq 20 \
  --metaA_path datasets/metas/vangogh2photo/train1A.meta \
  --metaB_path datasets/metas/vangogh2photo/train1B.meta
