#!/bin/bash

# このスクリプトは、downloadsディレクトリにあるファイルを指定したディレクトリに移動するものです。

# ディレクトリを入力
read -rp "Move Dest Directory [$HOME/Desktop]: " DIR

# DIRが空の場合はデフォルトのディレクトリを指定
if [[ -z "$DIR" ]]; then
  DIR="$HOME/Desktop"
fi

# ディレクトリが存在しない場合は作成する
mkdir -p "$DIR"

# 移動先ディレクトリを表示
echo "Move destination directory: $DIR"

# downloadsディレクトリにあるファイルを移動
mv downloads/* "$DIR"/
