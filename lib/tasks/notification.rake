namespace :notification do
  desc "Send SMS notification to employees asking to log if they had overtime or not"
  task sms: :environment do
    # 1. Schedule to run at Sunday at 5pm
    # 2. Iterate over all employees
    # 3. Skip admin users
    # 4. Send a message that has instructions and a link to log time
    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
    # No spaces or dashes
    # exactly 10 characters
    # all characters have to be a number
  end
end
