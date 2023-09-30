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


# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| last_name          | string | null: false               |
| first_name         | string | null: false               |
| last_name_kana     | string | null: false               |
| first_name_kana    | string | null: false               |
| birthday           | date   | null: false               |

### Association

- has_many :user_items
- has_many :items, through: :user_items


## items テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| item_name          | string  | null: false |
| item_description   | text    | null: false |
| category           | string  | null: false |
| item_condition     | string  | null: false |
| shipping_fee_payer | string  | null: false |
| shipping_origin    | string  | null: false |
| days_to_ship       | string  | null: false |
| price              | integer | null: false |

### Association

- has_many :user_items
- has_many :users, through: :user_items


## user_items テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :deliveryinfo


## deliveryinfo テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| postcode     | string     | null:false                     |
| prefecture   | string     | null:false                     |
| city         | string     | null:false                     |
| block        | string     | null:false                     |
| building     | string     |                                |
| phone_number | integer    | null: false                    |
| user_item    | references | null: false, foreign_key: true |

### Association

- belongs_to :user_item
