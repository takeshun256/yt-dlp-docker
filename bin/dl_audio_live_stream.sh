#!/bin/bash

# このスクリプトは、ライブ配信の音声をダウンロードするものです。

# 動画のURLを入力
read -rp "Audio of Live Stream URL: " URL

# yt-dlpコマンドを実行
yt-dlp \
  -i \
  -x \
  --live-from-start \
  -o "downloads/%(title)s【live_stream】.%(ext)s" \
  "$URL"
