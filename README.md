# README

# VSTレビューアプリ

## 概要
主にVSTプラグイン（作曲で使うソフト）のレビューを投稿、閲覧できる。

## コンセプト
検索性の低いVSTなど音源ソフト、エフェクターのレビューをまとめてみることが出来る

## バージョン
Ruby 2.6.5 Rails 5.2.4

## 機能一覧
- ログイン機能
- ユーザー登録機能
  - メールアドレス、名前、パスワード必須
- レビュー一覧表示機能
  - 評価数を表示
  - 登録タグを表示
- レビュー編集機能
- レビュー削除機能
- レビュー投稿機能
  - タイトルと内容は必須
- レビュー評価機能
  - 一人一回
- 画像投稿機能
  - 三枚程度を上限
- 名前・タグ検索機能
- 評価順ソート機能

## カタログ設計
https://docs.google.com/spreadsheets/d/1_AC_A-ovCSGleelHJC4W3DeKJsMwtzhUzOi0XsnBfA8/edit#gid=0

## テーブル定義
https://docs.google.com/spreadsheets/d/19W4sJcVMTM0nSDGpAHl9Ycw93FzfuhB1VUBv2tGlEuk/edit#gid=0

## 画面遷移図
https://docs.google.com/spreadsheets/d/1QFnrc8xzXcOnjhoRRXKN7UqAgHr7Fe-XwAOf6-M6C2U/edit#gid=0

## 画面ワイヤーフレーム
https://docs.google.com/spreadsheets/d/1CJftTWEp4l0x6dXiZsTf_KkXu3FMRePSrDlTnZ2834Y/edit#gid=0

## 仕様予定Gem
* devise
* Kaminari
* Active Admin