# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username "MyString"
    email "MyString"
    password_hash "MyString"
    password_salt "MyString"
    admin false
  end
end
