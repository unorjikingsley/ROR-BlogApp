# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

10.times do
  User.create(
    name: Faker::Name.name,
    photo: Faker::Avatar.image,
    bio: Faker::Lorem.paragraph(sentence_count: 2),
    posts_counter: 0
  )
end

50.times do
  Post.create(
    title: Faker::Lorem.sentence(word_count: 3),
    text: Faker::Lorem.paragraph(sentence_count: 2),
    author_id: User.all.sample.id,
    likes_counter: 0,
    comments_counter: 0
  )
end

100.times do
  Comment.create(
    text: Faker::Lorem.paragraph(sentence_count: 2),
    author_id: User.all.sample.id,
    post_id: Post.all.sample.id
  )
end

# first_user = User.create(name: 'Tom', photo: 'https://placehold.co/200x133', bio: 'Teacher from Mexico.', posts_counter: 0)
# second_user = User.create(name: 'Lilly', photo: 'https://placehold.co/200x133', bio: 'Teacher from Poland.', posts_counter: 0)

# first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# Post.create(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# second_post = Post.create(author: second_user, title: 'Hi Word!', text: 'Lets talk', comments_counter: 0, likes_counter: 0)

# Comment.create(post: first_post, author: second_user, text: 'Hi Tom!' )
# Comment.create(post: first_post, author: second_user, text: 'Hi Tom!' )
# Comment.create(post: first_post, author: second_user, text: 'Hi Tom!' )
# Comment.create(post: first_post, author: second_user, text: 'Hi Tom!' )
# Comment.create(post: first_post, author: second_user, text: 'Hi Tom!' )
# Comment.create(post: first_post, author: second_user, text: 'Hi Tom!' )
# Comment.create(post: first_post, author: second_user, text: 'Hi Tom!' )
# Comment.create(post: first_post, author: second_user, text: 'Hi Tom!' )
# Comment.create(post: first_post, author: second_user, text: 'Hi Tom!' )
# Comment.create(post: second_post, author: first_user, text: 'Hi Lili!' )

# Like.create(post: first_post, author: second_user)
# Like.create(post: first_post, author: first_user)
# Like.create(post: second_post, author: first_user)
