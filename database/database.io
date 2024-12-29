Table subscriptions {
  following_user_id integer
  followed_user_id integer
  created_at timestamp
}

Table users {
  id integer [primary key]
  username varchar
}

Table posts {
  id integer [primary key]
  title varchar
  body text [note: 'Content of the post']
  location tinytext
  photo tinytext
  user_id integer
  likes integer
  created_at timestamp
}

Table comments {
  post_id integer
  user_id integer
  body text [note: 'Content of the comment']
  reply_comment_id integer
  created_at timestamp
}

Ref: posts.user_id > users.id // many-to-one
Ref: users.id < subscriptions.following_user_id
Ref: users.id < subscriptions.followed_user_id
Ref: users.id < comments.user_id
Ref: comments.post_id > posts.id