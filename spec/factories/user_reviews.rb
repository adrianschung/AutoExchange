FactoryBot.define do
  factory :user_review do
    for_user nil
    by_user nil
    content "MyText"
    rating 1
  end
end
