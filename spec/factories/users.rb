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
    phone '5555555555'
    ssn 1234
    company "ABC company"
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Nick'
    last_name 'Kang'
    email { generate :email }
    password 'asdasd'
    password_confirmation 'asdasd'
    phone '5555555555'
    ssn 1234
    company "ABC company"
  end

    factory :non_authorized_user, class: "User" do
    first_name 'Non'
    last_name 'Authorized'
    email { generate :email }
    password 'asdasd'
    password_confirmation 'asdasd'
    phone '5555555555'
    ssn 1234
    company "ABC company"
  end

end
