@user = User.create(
              email: "test@test.com",
              password: "asdasd",
              password_confirmation: "asdasd",
              first_name: "Nick",
              last_name: "Kang"
              )

puts '1 User created'

User.create(
            email: "admin@test.com",
            password: "asdasd",
            password_confirmation: "asdasd",
            first_name: "Nick",
            last_name: "Boss"
            )

puts '1 Admin User created'

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts '100 posts have been created'
