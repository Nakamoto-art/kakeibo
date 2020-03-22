# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
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