# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

300.times do |t|
  Cv.create(
      full_name: Faker::Name.name,
      contacts: t.odd? ? ('8' + rand(1000000000..9999999999).to_s) : Faker::Internet.safe_email,
      status: [true, false].sample,
      salary: rand(10..60) * 1000
  )
end

300.times do |t|
  Vacancy.create(
      name: Faker::Lorem.word.titleize,
      salary: rand(10..60) * 1000,
      contacts: Faker::Address.city + ', ' + Faker::Address.street_address
  )
end
