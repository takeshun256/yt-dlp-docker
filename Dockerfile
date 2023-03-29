FROM ubuntu:latest

# パッケージをアップデートし、yt-dlpに必要な依存関係をインストール
RUN apt-get update && apt-get install -y \
    curl \
    ffmpeg \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# yt-dlpをダウンロードし、実行可能ファイルに変更する
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp \
    && chmod a+rx /usr/local/bin/yt-dlp \
    && yt-dlp -U

# シェルスクリプトをコンテナにコピー
COPY bin/*.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/*.sh

# デフォルトのコマンドを指定
CMD ["/bin/bash"]
