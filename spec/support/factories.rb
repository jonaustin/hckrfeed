FactoryGirl.define do
  sequence(:url) { |n| "http://www.url_#{n}.com"}
  sequence(:name) { |n| "name_#{n}.com"}
  sequence(:username) { |n| "user_#{n}.com"}

  factory :link do
    url       { generate(:url) }
    name      { generate(:name) }
    username  { generate(:username) }
  end
end
