# prog1-environment

筑波大学で開講されているプログラミング入門AのDocker向け環境です。

## 使い方

Dockerと[Docker compose](https://docs.docker.jp/v1.12/compose/install.html)が必要です。

```bash
git clone https://github.com/coins23/prog1-environment.git
cd prog1-environment
docker compose up
# シェルに接続
docker compose exec jupyter bash
# 終了
docker compose down
```