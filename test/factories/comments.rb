# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    article
    name  'test_name'
    body  'test_body'
  end
end
