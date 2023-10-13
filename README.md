# prog1-environment

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/coins23/prog1-environment)

筑波大学で開講されているプログラミング入門AのDocker向け環境です。

[Container registry](https://github.com/coins23/prog1-environment/pkgs/container/prog1-environment)にて、linux/amd64とlinux/arm64のビルド済みDockerイメージを公開しています。

## 使い方

Dockerと[Docker compose](https://docs.docker.jp/v1.12/compose/install.html)が必要です。

```bash
# 初期設定
git clone https://github.com/coins23/prog1-environment.git
cd prog1-environment

# Jupyter Notebookを起動
docker compose up
# ブラウザで http://localhost:8888 に接続するとJupyter Notebookが起動します

# シェルに接続
docker compose exec jupyter bash

# Jupyter Notebookを終了
docker compose down
```

`./notebooks`フォルダにノートブックファイルを保存するとJupyter Notebookから確認できます。