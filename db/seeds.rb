user = User.create!(
email: 'mike.andrews357@gmail.com',
password: 'asdfasdf',
password_confirmation: 'asdfasdf',
first_name: 'Mike',
last_name: 'Andrews',
username: 'Mikey'
)

puts user.inspect 

user2 = User.create!(
email: 'mikey357ca@hotmail.com',
password: 'asdfasdf',
password_confirmation: 'asdfasdf',
first_name: 'Michael',
last_name: 'Andrews',
username: 'Michael'
)

puts user2.inspect 

50.times do
  post = Post.create!(
    title: Faker::Coffee.blend_name,
    body: Faker::Coffee.notes,
    user_id: rand(1..2)
  )
puts post.inspect
end

50.times do
comment =Comment.create!(
  body: Faker::Lorem.paragraphs,
  post_id: rand(1..50),
  user_id: rand(1..2)
)
puts comment.inspect

end
# rails db:drop db:create db:migrate db:seed