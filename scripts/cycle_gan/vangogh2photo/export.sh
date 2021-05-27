#!/usr/bin/env bash
python export.py \
  --input_path logs/cycle_gan/vangogh2photo/supernet/checkpoints/latest_net_G.pth \
  --output_path logs/cycle_gan/vangogh2photo/compressed/latest_net_G.pth \
  --ngf 32 --config_str $1
