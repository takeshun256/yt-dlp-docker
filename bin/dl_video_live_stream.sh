#!/bin/bash

# このスクリプトは、ライブ配信の動画をダウンロードするものです。

# 動画のURLを入力
read -rp "Video of Live Stream URL: " URL

# yt-dlpコマンドを実行
yt-dlp \
  -i \
  --live-from-start \
  -o "downloads/%(title)s【live_stream】.%(ext)s" \
  "$URL"
