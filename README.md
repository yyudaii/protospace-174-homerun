# テーブル設計

## users テーブル 確認後

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |

## prototypesテーブル

| Column     | Type        | Options     |
| ---------- | ----------- | ----------- |
| title      | string      | null: false |
| catch_copy | text        | null: false |
| concept    | text        | null: false |
| user       | references  | null: false, foreign_key: true |

## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |