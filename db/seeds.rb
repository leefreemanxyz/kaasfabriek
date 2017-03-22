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

Photo.create!(
  remote_image_url: "http://res.cloudinary.com/dmagtxb3l/image/upload/v1490201325/Cheese8_zgb9sh.jpg",
  product: Product.first,
  profile: nil,
)

Photo.create!(
  image:"http://res.cloudinary.com/dmagtxb3l/image/upload/v1490201326/Cheese1_obmnqr.jpg",
  product: Product.second,
  profile: nil,
)

Photo.create!(
  remote_image_url:"http://res.cloudinary.com/dmagtxb3l/image/upload/v1490201326/Cheese2_ocvab4.jpg",
  product: Product.third,
  profile: nil,
)

Photo.create!(
  remote_image_url:"http://res.cloudinary.com/dmagtxb3l/image/upload/v1490201326/Cheese3_ltq26h.jpg",
  product: Product.fourth,
  profile: nil,
)

Photo.create!(
  remote_image_url:"http://res.cloudinary.com/dmagtxb3l/image/upload/v1490201326/Cheese4_ul7to2.jpg",
  product: Product.fifth,
  profile: nil,
)

Photo.create!(
  remote_image_url:"http://res.cloudinary.com/dmagtxb3l/image/upload/v1490201325/Cheese5_w88qwa.jpg",
  product: Product.sixth,
  profile: nil,
)

Photo.create!(
  remote_image_url:"http://res.cloudinary.com/dmagtxb3l/image/upload/v1490201325/Cheese6_fediua.jpg",
  product: Product.seventh,
  profile: nil,
)

Photo.create!(
  remote_image_url:"http://res.cloudinary.com/dmagtxb3l/image/upload/v1490201325/Cheese7_upqcms.jpg",
  product: Product.eighth,
  profile: nil,
)

Photo.create!(
  remote_image_url:"http://res.cloudinary.com/dmagtxb3l/image/upload/v1490201326/Cheese9_musq54.jpg",
  product: Product.ninth,
  profile: nil,
)

Photo.create!(
  remote_image_url:"http://res.cloudinary.com/dmagtxb3l/image/upload/v1490201325/Cheese10_nhn81l.jpg",
  product: Product.tenth,
  profile: nil,
)
