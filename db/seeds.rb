# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  email: "test@test.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "Josh McDonald"
)

User.create!(
  email: "test2@test.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "Shelby McDonald"
)

5.times do |donation|
  Donation.create!(
    charity_name: "My Charity #{donation}",
    tax_id: "Tax id #{donation}",
    user_id: User.first.id
  )
end

5.times do |donation|
  Donation.create!(
    charity_name: "My Charity #{donation}",
    tax_id: "Tax id #{donation}",
    user_id: User.last.id
  )
end