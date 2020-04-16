# README

## ツール・ライブラリの名前

Kakeibo

## 概要

家計簿アプリになります。日々の収入・支出を記録して、
グラフにていくらほど貯蓄できたかを視覚的にわかりやすくしました。
これにより、利用者が将来いくら必要になるのかといった計画を立てる際にお役に立ちます。

***デモ***

URL: http://18.180.92.45

## 機能

- 一覧表示機能
- 新規記帳（登録）機能
- グラフ表示機能
- ログイン機能
- 検索機能


## 使い方

1. 新規登録・ログインを行う
2. ログイン後、トップページから収入・支出新規記帳を選択する
3. 画面遷移後、必要事項を記入して新規記帳を行う
4. トップページから収入・支出一覧から保存されたデータを閲覧可能
5. トップページから収支確認の棒グラフを選択して、確認したい年度を選択する
6. 選択後、画面が遷移して収入総額・支出総額・その差額が棒グラフにて表示される
7. 一覧ページにて、ヘッダーにある検索欄から科目名を選択して検索するとその科目名のみのデータが表示される


## テスト

ユーザーネーム: 太郎

email: aaa@aaa

パスワード: 111111


# データベース設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true, default: ""|
|encrypted_password|string|null: false, default: ""|


### Association
- has_many :incomes
- has_many :costs


## incomesテーブル
|Column|Type|Options|
|------|----|-------|
|date|date|null: false|
|name|integer|null: false|
|price|integer|null: false|
|description|text||
|user_id|references|foreign_key: true|

### Association
- belongs_to :user


## costsテーブル
|Column|Type|Options|
|------|----|-------|
|date|date|null: false|
|name|integer|null: false|
|price|integer|null: false|
|description|text||
|user_id|references|foreign_key: true|

### Association
- belongs_to :user