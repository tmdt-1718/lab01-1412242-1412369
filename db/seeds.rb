# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.delete_all
(1..2).each do |number|
    Article.create!(title:"title #{number}",body:"body #{number}",user_id:1)
end
Photo.delete_all
Album.delete_all

Album.create!(cover:"https://static.pexels.com/photos/36764/marguerite-daisy-beautiful-beauty.jpg",
owner:"khanh",total_views:20)
Album.create!(cover:"https://static.pexels.com/photos/210019/pexels-photo-210019.jpeg",
owner:"nhan",total_views:50)
# ALbum 1
(1..10).each do |number|
  Photo.create!(
    poster:"user1",
    views:5,
    url:"/khanh/img#{number}.jpg",
    album:"1"
  )
  Photo.create!(
    poster:"user2",
    views:5,
    url:"/nhan/img#{number}.jpg",
    album:"2"
  )
end
