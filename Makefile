.PHONY: all build run-it run-dl clean dl_video-best-quality dl_audio-best-quality dl_video-normal-quality dl_video-live-stream dl_audio-live-stream

IMAGE_NAME := yt-dlp

# ビルド、最高画質の動画ダウンロードを実行
all:
	make build
	make dl_video-best-quality

# Dockerイメージのビルド
build:
	docker build -t $(IMAGE_NAME) .

# yt-dlpコンテナを起動してbashで操作
run:
	docker run -it --rm --name $(IMAGE_NAME) \
	-v $(PWD)/downloads:/downloads $(IMAGE_NAME)

# 動画ダウンロード（最高画質、音声あり）
dl_video-best-quality:
	docker run -it --rm --name $(IMAGE_NAME) \
	-v $(PWD)/downloads:/downloads $(IMAGE_NAME) \
	dl_video_best_quality.sh

# 音声ダウンロード（最高画質、音声のみ）
dl_audio-best-quality:
	docker run -it --rm --name $(IMAGE_NAME) \
	-v $(PWD)/downloads:/downloads $(IMAGE_NAME) \
	dl_audio_best_quality.sh

# 動画ダウンロード（普通画質、音声あり）
dl_video-normal-quality:
	docker run -it --rm --name $(IMAGE_NAME) \
	-v $(PWD)/downloads:/downloads $(IMAGE_NAME) \
	dl_video_normal_quality.sh

# 動画ダウンロード（ライブ配信）
dl_video-live-stream:
	docker run -it --rm --name $(IMAGE_NAME) \
	-v $(PWD)/downloads:/downloads $(IMAGE_NAME) \
	dl_video_live_stream.sh

# 音声ダウンロード（ライブ配信）
dl_audio-live-stream:
	docker run -it --rm --name $(IMAGE_NAME) \
	-v $(PWD)/downloads:/downloads $(IMAGE_NAME) \
	dl_audio_live_stream.sh

# Dockerイメージの削除
clean:
	docker rmi $(IMAGE_NAME)

# ダウンロードしたファイルを移動する
move_downloads:
	$(PWD)/bin/move_downloads.sh
