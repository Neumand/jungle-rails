FactoryBot.define do
  factory :user do |user|

    user.sequence(:first_name) { |n| "John#{n}"}
    user.sequence(:last_name) { |n| "Smith#{n}"}
    email {'jsmith@example.com'}
    password {'p@ssw0rd'}
    password_confirmation {'p@ssw0rd'}
  
  end
end