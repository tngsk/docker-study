# docker-study

$ docker run hello-world

イメージの一覧
`$ docker images`

コンテナの一覧
`$ docker ps -a`

コンテナの削除
`$ docker rm <CONTAINER ID>`
`$ docker rm <NAMES>`

イメージの削除
`$ docker rmi <IMAGE ID>`
`$ docker rmi <REPOSITORY>`

docker hub からイメージを取得
`$ docker pull <IMAGE>`

コンテナの起動
`$ docker run -d --name <NAMES> -p 8181:80 <IMAGE>`

    options:
        -d バックグラウンドで実行
        -name コンテナ名
        -p ホストとコンテナのポートフォワード設定
        -v ホストとのディレクトリ共有
        -it ホストとコンテナの標準入出力を接続する

コンテナの起動・停止
`$ docker start <NAMES>`
`$ docker stop <NAMES>`

ファイルのコピー

host -> container
`$ docker cp <SRC_FILE> <CONTAINER>:<DEST_DIR>`

container -> host
`$ docker cp <CONTAINER>:<SRC_FILE> <DEST_DIR> `

コンテナへログイン
$ docker exec -it <CONTAINER> bash

---

docker hub へログイン
`$ docker login`

イメージをpush
`$ docker push <REPOSITORY>`

---

`$ docker-compose up`
`$ docker-compose down`
`$ docker-compose build --no-cache`
