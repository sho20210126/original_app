# README

# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| username           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| family_name        | string | null: false               |
| first_name         | string | null: false               |
| family_name_kana   | string | null: false               |
| first_name_kana    | string | null: false               |
| birth_day          | date   | null: false               |

### Association

- 
- 

## game テーブル

| Column                      | Type   | Options                   |
| --------------------------  | ------ | ------------------------- |
| game_user_character_id      | string | null: false               |
| game_description            | string | null: false, unique: true |
| game_ability_id             | string | null: false               |
| game_matching_character_id  | string | null: false               |
| game_matching_ability_id    | string | null: false               |



### Association

- 
- 
## game テーブル






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
