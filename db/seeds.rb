# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ==> users
ethan = User.create(email: 'ethan.liu@test.com', password: 'asas')
harry = User.create(email: 'harry.potter@test.com', password: 'asas')
jack = User.create(email: 'jack.sparrow@test.com', password: 'asas')

# ==> articles
20.times do
  FactoryBot.create(:article, author: ethan)
  FactoryBot.create(:article, author: harry)
  FactoryBot.create(:article, author: jack)
end
