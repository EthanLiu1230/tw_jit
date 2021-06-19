# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ==> users
ethan = User.create(email: 'ethan@test.com', password: 'asas')

# ==> articles
50.times do
  FactoryBot.create(:article, author: ethan)
end