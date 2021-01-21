# Anasibleを使用してKuberentesをセットアップする。

Docker.ioをインストールしてユーザで実行できるように編集はした。

cri-oを使用したkuberenetesの基礎環境を作るように変更

Kubernetesが作れるように作成はしておいた。

## 事前準備
以下の環境のマシーンを用意しておくこと

|名前|IP|OS|備考|
|--|--|--|--|
|build|固定|ubuntu 20.10|operate SDKのビルド環境|
|k8s|固定|ubuntu 20.10|Master|
|worker-1|固定|ubuntu 20.10|Worker|

あらかじめ以下のコマンドを実行しておく
```
sudo apt update && sudo apt upgrade -y && sudo apt install -y curl git ssh
```

`/etc/hosts`に名前とIPを登録しておく

build環境で以下のコマンドで、SSH Keyを作成して、ssh keyを交換しておく

```
ssh-keygen
```
```
ssh-copy-id k8s
```
```
ssh-copy-id worker-1
```

## 実行
build環境で、このコードをコピーして
以下のコマンドを実行する

```
./start.sh
```

問題なく動作されると
31000ポートでDockerレジストリーが開始される
ブラウザで、31001ポートにアクセスするとDockerレジストリーの状態が確認できる。

Operterについては、以下のコマンドで動作確認できる。
```
operator-sdk version
```

## 課題
DockerレジストリをKuberentesネットワークを構築することはAnsible化していないので、する必要がある

## 余談
Linux Kernel 5.8系のバグで、serviceの再起動や起動がうまくいかない時があるので、
serviceのstateを操作する際には注意が必要
ubuntu 20.04でこの問題を確認
