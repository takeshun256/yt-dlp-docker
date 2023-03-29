#!/bin/bash

# このスクリプトは、音声を最高品質でダウンロードするものです。

# 動画のURLを入力
read -rp "Audio URL: " URL

# yt-dlpコマンドを実行
yt-dlp \
  -i \
  -x \
  -f "ba[ext=webm]" \
  --audio-format m4a \
  -o "downloads/%(title)s【best_quality】.%(ext)s" \
  "$URL"
