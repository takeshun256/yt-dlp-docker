#!/bin/bash

# このスクリプトは、動画を通常品質でダウンロードするものです。

# 動画のURLを入力
read -rp "Video URL: " URL

# yt-dlpコマンドを実行
yt-dlp \
  -i \
  -f "bv[ext=webm]+ba[ext=webm]" \
  --merge-output-format mp4 \
  -o "downloads/%(title)s【normal_quality】.%(ext)s" \
  "$URL"
