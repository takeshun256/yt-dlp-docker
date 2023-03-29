# yt-dlp-script

Docker環境で[yt-dlp](https://github.com/yt-dlp/yt-dlp)を実行し、ローカル環境を汚さずに、簡単にyt-dlpを扱えるようにする個人的なプロジェクト

## セットアップ
### クローン
```bash
git clone https://github.com/takeshun256/yt-dlp-docker
cd yt-dlp-docker
```

### 使い方
- 動画を最高画質でダウンロードする
```bash
make all
```

- 音声を最高品質でダウンロードする
```bash
make build
make dl_audio_best_quality
```

- ライブを動画で最高画質でダウンロードする
```bash
make build
make dl_video_live_stream
```

- インタラクティブにDocker環境を使用する
```bash
make build
make run
```

- ビルドしたイメージの削除
```bash
make clean
```

### ダウンロード後
- ダウンロード先は、`yt-dlp-docker/downloads/` に保存される。
- ダウンロードされたファイルをすべて任意の場所に移動させる(デフォルトはデスクトップ下)
```bash
make move_downloads
```





## 参考
- [yt-dlp](https://github.com/yt-dlp/yt-dlp)
