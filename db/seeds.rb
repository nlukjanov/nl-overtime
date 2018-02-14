@user = User.create!(
              email: "test@test.com",
              password: "asdasd",
              password_confirmation: "asdasd",
              first_name: "Nick",
              last_name: "Kang",
              phone: "5555555555"
              )

puts '1 User created'

AdminUser.create!(
            email: "admin@test.com",
            password: "asdasd",
            password_confirmation: "asdasd",
            first_name: "App",
            last_name: "Boss",
            phone: "5555555555"
            )

puts '1 Admin User created'

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content extended ext endede xtend edexten ded ext ended extendede xtended exten ded extend dext ended exten dedext endedext ended extend edexten ded extended  extended extended extended extended extended v extended  sadfds asdf asdf asdfas dfas dfas dfas dfasd fasdf asdf asd fasd fas df asdf das fs adf asd fas df asd fas df asd fasd ", user_id: @user.id, overtime_request: 2.5)
end

puts '100 posts have been created'

AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))

puts '3 audit logs have been created'
