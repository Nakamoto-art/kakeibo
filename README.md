# README

# ツール・ライブラリの名前

Kakeibo

## 簡単な説明

家計簿アプリになります。日々の収入・支出を記録して、
グラフにていくらほど貯蓄できたかを視覚的にわかりやすくしました。
これにより、利用者が将来いくら必要になるのかといった計画を立てる際にお役に立ちます。

***デモ***

![デモ](URL: http://18.180.92.45/)

## 機能

- 機能1（UI/計算 etc ...）
- 機能2
- 機能3
- ...

他の機能はこちらを参照して下さい。`awesome-tool --help`.

## 必要要件

- 要件
- 要件
- 要件
- ...

## 使い方

1. 使い方
2. 使い方
3. 使い方

## インストール

```
$ git clone https://github.com/TomoakiTANAKA/awesome-tool
$ cd awesome-tool
$ sh setup.sh
$ ~do anything~
```

## テスト

1. 使い方
2. 使い方
3. 使い方

## デプロイ

1. デプロイ
2. デプロイ
3. デプロイ


## 作者
email: oesatoshi@gmail.com


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