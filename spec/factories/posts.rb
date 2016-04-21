FactoryGirl.define do
  factory :post do
    user
    title FFaker::CheesyLingo.title
    slug FFaker::Internet.slug
    body FFaker::Lorem.paragraphs
    published false
    
    factory :published_post do
      published true
    end
  end
end
