# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.delete_all
(1..2).each do |number|
  Article.create!(title: "title #{number}", body: "body #{number}", user_id: 1)
end
User.delete_all
Photo.delete_all
Album.delete_all
Blog.delete_all

User.create!(name: 'nhan', email: 'nhan@gmail.com', password: '123123')
User.create!(name: 'khanh', email: 'khanh@gmail.com', password: '123123')
album1 =Album.create!(cover: 'https://static.pexels.com/photos/36764/marguerite-daisy-beautiful-beauty.jpg',
              owner: 'khanh', total_views: 20)
album2=Album.create!(cover: 'https://static.pexels.com/photos/210019/pexels-photo-210019.jpeg',
              owner: 'nhan', total_views: 50)
# ALbum 1
(1..10).each do |number|
  Photo.create!(
    poster: 'user1',
    views: 5,
    url: "/khanh/img#{number}.jpg",
    album:  album1.id
  )
  Photo.create!(
    poster: 'user2',
    views: 5,
    url: "/nhan/img#{number}.jpg",
    album: album2.id
  )
end

(1..10).each do |number|
  Blog.create!(
    poster: Faker::Name.name,
    views: Faker::Number.number(2),
    cover: "/cover/img#{number}.jpg",
    content: Faker::Lorem.paragraph,
    title: Faker::Lorem.sentences
  )
end
