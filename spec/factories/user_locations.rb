# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_location do
    user_id 1
    location_id 1
    date_connected "2014-05-20"
  end
end
