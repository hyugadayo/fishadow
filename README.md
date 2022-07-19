# テーブル設計

## users テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| nickname           | string     | null: false                    |
| email              | string     | null: false                    |
| encrypted_password | string     | null: false                    |
| prefecture         | references | null: false, foreign_key: true |
| introduce          | text       |                                |

### Association

- has_many :finshings
- has_many :comment
- has_many :goods
- has_many :favorites
- has_one :mytools,  dependent: :destroy
- has_many :follower, class_name: "Relationship",  dependent: :destroy
- has_many :followed, class_name: "Relationship",  dependent: :destroy
- belongs_to :prefecture


## mytools テーブル

| Column       | Type       | Options                        |
| ------------ | ------     | -----------                    |
| tool_name    | string     | null: false                    |
| price        | integer    | null: false                    |
| manufacuture | string     |                                |
| explain      | text       |                                |
| user         | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## relationship テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| follower           | references | null: false, foreign_key: true |
| followed           | references | null: false, foreign_key: true |


### Association

- belongs_to :follower, class_name: "User"
- belongs_to :followed, class_name: "User"

## prefecture テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| name               | string     | null: false                    |
| slug               | string     | null: false                    |


### Association

- has_many :users
- has_many :fishings


## fishings テーブル

| Column             | Type       | Options                        |
| ------------------ | ------     | ------------------------------ |
| get_date           | date       | null: false                    |
| fish_name          | string     | null: false                    |
| get_number         | integer    | null: false                    |
| size               | string     | null: false                    |
| weight             | string     | null: false                    |
| style              | string     | null: false                    |
| explain            | text       | null: false                    |
| wether_id          | integer    | null: false                    |
| prefecture_id      | references | null: false, foreign_key: true |
| area               | string     |                                |
| lat                | float      | null: false                    |
| lng                | float      | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments,  dependent: :destroy
- has_many :goods,     dependent: :destroy
- has_many :favorites, dependent: :destroy
- belongs_to :prefecture


## comments テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| text               | text       | null: false                    |
| user               | references | null: false, foreign_key: true |
| fishing            | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :fishing

## favorites テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| fishing            | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :fishing

## like テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| fishing            | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :fishing