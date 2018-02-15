namespace :notification do
  desc "Send SMS notification to employees asking to log if they had overtime or not"
  task sms: :environment do
    if Time.now.sunday?
      # 1. Schedule to run at Sunday at 5pm
      # 2. Iterate over all employees
      # 3. Skip admin users
      # 4. Send a message that has instructions and a link to log time
      # User.all.each do |user|
      #   SmsTool.send_sms()
      # end
    end
  end

  desc "Sends mail notification to managers (admin users) each day to inform of pending overtime requests"
  task manager_email: :environment do
    puts "I'm in the manager email"
    # 1. Iterate over list of pending overtime requests
    # 2. Check to see if there are any requests
    # 3. Iterate over the list of admin users/managers
    # 4. Send email to each admin
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
    end
  end
end
