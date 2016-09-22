# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
%w(Watch Phone NB Computer Tv DC).each do |name|
  Category.find_or_create_by(name: name)
end

category_ids = Category.pluck(:id)
brand = %w(Apple HTC ASUS Mi Samsung Dyson SONY CANON NIKON)

1..100.times do
  Product.create(name: "#{brand.sample} #{FFaker::Name.name}",
                 desc: FFaker::Lorem.paragraph,
                 category_id: category_ids.sample,
                 price: Random.rand(10000),
                 published: [true, false].sample)
end