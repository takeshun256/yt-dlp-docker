#!/bin/bash

# このスクリプトは、動画を最高品質でダウンロードするものです。

# 動画のURLを入力
read -rp "Video URL: " URL

# yt-dlpコマンドを実行
yt-dlp \
  -i \
  -f "bv[ext=webm]+ba[ext=webm]" \
  --merge-output-format webm \
  --recode-video mp4 \
  -o "downloads/%(title)s【best_quality】.%(ext)s" \
  "$URL"
