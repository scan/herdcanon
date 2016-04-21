FactoryGirl.define do
  factory :user do
    pw = FFaker::Internet.password
    
    email FFaker::Internet.email
    display_name FFaker::Name.name
    password pw
    password_confirmation pw
  end
end
