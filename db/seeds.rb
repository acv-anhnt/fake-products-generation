# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Category.destroy_all
Product.destroy_all

ActiveRecord::Base.connection.execute(
  'UPDATE SQLITE_SEQUENCE SET seq = 0 WHERE name = \'products\''
)
ActiveRecord::Base.connection.execute(
  'UPDATE SQLITE_SEQUENCE SET seq = 0 WHERE name = \'categories\''
  )

10.times do
    Category.create(
        title: Faker::Commerce.unique.department
    )
end

100.times do
    Product.create(
        title: Faker::Commerce.product_name,
        description: Faker::Quote.famous_last_words,
        price: Faker::Commerce.price,
        image_url: 'https://loremflickr.com/640/480/lego',
        category_id: Faker::Number.between(1, 10)
    )
end