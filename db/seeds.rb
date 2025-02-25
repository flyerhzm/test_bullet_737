# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

post1 = Post.create(:name => 'first')
post2 = Post.create(:name => 'second')

user1 = User.create(:name => 'user1', email: 'user1@example.com')
user2 = User.create(:name => 'user2', email: 'user2@example.com')

post1.comments.create(:name => 'first', :from_user => user1, :to_user => user2)
post1.comments.create(:name => 'second', :from_user => user2, :to_user => user1)

post2.comments.create(:name => 'third', :from_user => user1, :to_user => user2)
post2.comments.create(:name => 'fourth', :from_user => user2, :to_user => user1)

post1.comments.create(:name => 'third', :from_user => user1, :to_user => user2)