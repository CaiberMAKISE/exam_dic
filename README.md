# README

# VSTレビューアプリ

## 概要
主にVSTプラグイン（作曲で使うソフト）のレビューを投稿、閲覧できる。

## コンセプト
検索性の低いVSTなど音源ソフト、エフェクターのレビューをまとめてみることが出来る

## バージョン
Ruby 2.6.5 Rails 5.2.4

## 機能一覧
- ログイン機能 `高`
- ユーザー登録機能
  - メールアドレス、名前、パスワード必須 `高`
- レビュー一覧表示機能
  - 評価数を表示 `中`
  - 登録タグを表示 `中`
- レビュー編集機能 `高`
- レビュー削除機能 `高`
- レビュー投稿機能
  - タイトルと内容は必須 `高`
- レビュー評価機能
  - 一人一回 `中`
- 画像投稿機能
  - 三枚程度を上限 `低`
- 名前・タグ検索機能 `中`
- 評価順ソート機能 `低`

## カタログ設計
https://docs.google.com/spreadsheets/d/1_AC_A-ovCSGleelHJC4W3DeKJsMwtzhUzOi0XsnBfA8/edit#gid=0

## テーブル定義
https://docs.google.com/spreadsheets/d/19W4sJcVMTM0nSDGpAHl9Ycw93FzfuhB1VUBv2tGlEuk/edit#gid=0

## 画面遷移図
https://docs.google.com/spreadsheets/d/1QFnrc8xzXcOnjhoRRXKN7UqAgHr7Fe-XwAOf6-M6C2U/edit#gid=0

## 画面ワイヤーフレーム
https://docs.google.com/spreadsheets/d/1CJftTWEp4l0x6dXiZsTf_KkXu3FMRePSrDlTnZ2834Y/edit#gid=0

## ER図
https://docs.google.com/spreadsheets/d/1Wux5mJaRHXzMy-T0fTCrM69R9ZXvYRW22X5uI7k10Qw/edit#gid=0

## 使用予定Gem
* devise
* Kaminari
* Active Admin
* pry-rails
* better_errors
* has_secure_password

## 使用する技術
- 就業Term
  - device
  - Kaminari

- カリキュラム外
  - Active Admin