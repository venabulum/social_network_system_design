Table posts_and_locations_index {
  location_id integer [primary key]
  post_id integer [primary key]
  author_id integer
  subscriber_id integer
  famous_location bool
  post_photo tinytext
  post_description text
  post_location tinytext
  likes integer
  created_at timestamp
}