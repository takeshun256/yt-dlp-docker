# yt-dlp-docker

Docker環境で[yt-dlp](https://github.com/yt-dlp/yt-dlp)を実行し、ローカル環境を汚さずにyt-dlpを扱えるための個人的なプロジェクトです。

## セットアップ
### クローン
```bash
git clone https://github.com/takeshun256/yt-dlp-docker
cd yt-dlp-docker
```

### 使い方

以下は主な使い方になります。  
(実行時、Youtube動画のURLの入力を求められるので、ダウンロードしたい動画のURLを入力してください。)

- 動画を最高画質でダウンロードする場合: 
```bash
make all
```

- 音声を最高品質でダウンロードする場合: 
```bash
make build
make dl_audio-best-quality
```

- ライブを動画で最高画質でダウンロードする場合: 
```bash
make build
make dl_video-live-stream
```

- インタラクティブにDocker環境を使用する場合: 
```bash
make build
make run
```

- ビルドしたイメージの削除: 
```bash
make clean
```

### ダウンロード後
- ダウンロード先は、`yt-dlp-docker/downloads/` に保存されます。
- ダウンロードされたファイルを任意の場所に移動することができます。移動先のデフォルトはデスクトップ下になります。
```bash
make move_downloads
```

## 参考
- [yt-dlp](https://github.com/yt-dlp/yt-dlp)
