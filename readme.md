# Anasibleを使用してKuberentesをセットアップする。

Docker.ioをインストールしてユーザで実行できるように編集はした。

cri-oを使用したkuberenetesの基礎環境を作るように変更

Kubernetesが作れるように作成はしておいた。

## 事前準備
以下の環境のマシーンを用意しておくこと

|名前|IP|OS|備考|
|--|--|--|--|
|build|固定|ubuntu|operate SDKのビルド環境|
|k8s|固定|ubuntu|Master|
|worker-1|固定|ubuntu|Worker|

あらかじめ以下のコマンドを実行しておく
```
sudo apt update && sudo apt upgrade -y && sudo apt install -y curl git ssh
```

## 余談
Linux Kernel 5.8系のバグで、serviceの再起動や起動がうまくいかない時があるので、
serviceのstateを操作する際には注意が必要
ubuntu 20.04で確認