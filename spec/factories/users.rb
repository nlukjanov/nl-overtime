FactoryBot.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    first_name 'Nick'
    last_name 'Kang'
    email { generate :email }
    password 'asdasd'
    password_confirmation 'asdasd'
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Nick'
    last_name 'Kang'
    email { generate :email }
    password 'asdasd'
    password_confirmation 'asdasd'
  end

end