Profile.delete_all
User.delete_all
Product.delete_all

users = []
10.times do
  users << User.create!(
  email: Faker::Internet.email,
  password: "abcd1234"
  )
end

products = []
10.times do
  products << Product.create!(
  name: Faker::Superhero.name,
  price: rand(5..100),
  description: Faker::Hipster.paragraph,
  shortdescription: Faker::Hipster.sentence
  )
end

Profile.create!(
  user: User.first,
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  delivery_address: "#{Faker::Address.street_address} #{Faker::Address.city} (#{Faker::Address.country})",
)
Profile.create!(
  user: User.second,
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  delivery_address: "#{Faker::Address.street_address} #{Faker::Address.city} (#{Faker::Address.country})",
)
Profile.create!(
  user: User.third,
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  delivery_address: "#{Faker::Address.street_address} #{Faker::Address.city} (#{Faker::Address.country})",
)
