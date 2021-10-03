# README


# テーブル設計

## Users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| user               | string  | null: false               |
| email              | string  | null: false, unique: true |
| picture            | string  | null: false               |
| introduction       | string  | null: false               |
| sex                | string  | null: false               |
| admin              | boolean | null: false               |
| password_digest    |         | null: false               |
| remenber_digest    |         | null: false               |

### Association

- 
- 

## Relationship テーブル

| Column                      | Type    | Options                   |
| --------------------------  | ------- | ------------------------- |
| follower_id                 | integer | null: false               |
| followered_id               | integer | null: false, unique: true |

### Association

- 
- 
## Dish テーブル

| Column         | Type       | Options                        |
| -------        | ---------- | ------------------------------ |
| name           | string     |                                |
| user_id        | references | null: false, foreign_key: true |
| picture        | string     | null: false, foreign_key: true |
| description    | string     |                                |
| portion        | string     |                                |
| tips           | string     |                                |
| reference      | text       |                                |
| required_time  | text       |                                |
| popularity    | text        |                                |
| cook_memo     | text        |                                |

### Association

- belongs_to :room
- belongs_to :user


## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user




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
