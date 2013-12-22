# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article do
    title  'test_title'
    body  'test_body'
    pv  0

    trait :has_comments do
      after(:create) do |article, evaluate|
        create_list(:comment, 1, article: article)
      end
    end
  end
end
