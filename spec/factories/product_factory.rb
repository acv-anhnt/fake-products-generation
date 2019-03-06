FactoryBot.define do
    factory :product do
        title { Faker::Commerce.product_name }
        description { Faker::Quote.famous_last_words }
        price { Faker::Commerce.price }
        image_url { 'https://loremflickr.com/640/480/lego' }
        category { create(:category) }
    end
end