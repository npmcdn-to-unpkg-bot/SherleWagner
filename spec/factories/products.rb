# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name "MyString"
    number "MyString"
    Category nil
    Sub_category nil
  end
end
