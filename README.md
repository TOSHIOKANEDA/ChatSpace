# README

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user


<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD


=======
>>>>>>> parent of 1e01c05... Update README.md
=======
>>>>>>> parent of 1e01c05... Update README.md
=======
>>>>>>> parent of 1e01c05... Update README.md
=======


>>>>>>> parent of 17d358d... Update README.md
=======


>>>>>>> parent of 17d358d... Update README.md
=======


>>>>>>> parent of 17d358d... Update README.md
=======


>>>>>>> parent of 17d358d... Update README.md
## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|group_name|string|null: false|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
|master_member|string|null: false|
|sub_member|string|null: true|

### Association
- has_many :groups_users
- has_many :users, through: groups_users
- has_many :messages


<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD


=======
>>>>>>> parent of 1e01c05... Update README.md
=======
>>>>>>> parent of 1e01c05... Update README.md
=======
>>>>>>> parent of 1e01c05... Update README.md
=======


>>>>>>> parent of 17d358d... Update README.md
=======


>>>>>>> parent of 17d358d... Update README.md
=======


>>>>>>> parent of 17d358d... Update README.md
=======


>>>>>>> parent of 17d358d... Update README.md
## usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|

### Association
- has_many :groups_users
- has_many :groups, through: groups_users
- has_many :messages



<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

=======
>>>>>>> parent of 17d358d... Update README.md
=======
>>>>>>> parent of 17d358d... Update README.md
=======
>>>>>>> parent of 17d358d... Update README.md
=======
>>>>>>> parent of 17d358d... Update README.md
## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|image|string|null: true|

### Association
- belongs_to :user
- belongs_to :group
