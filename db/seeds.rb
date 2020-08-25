# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@admin.com', password: '7218099', password_confirmation: '7218099')
30.times do |n|
    user = User.new(
      email: "#{n + 1}@test.com",
      username: "テスト#{n + 1}",
      password: "13549#{n + 1}",
      password_confirmation: "13549#{n + 1}"
    )
    user.save!
end