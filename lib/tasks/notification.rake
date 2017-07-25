namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
  	# Schedule to run Sunday at 5pm
  	# Iterate over all employees
  	# Skip AdminUsers
  	# Send a message w/ instructions and a link to log time
  	# User.all.each do |user, phone|
  	# 	#skip admin user
  	# 	SmsTool.send_sms(user, phone)
  	# end
  end

  desc "Sends mail notifications to managers (admin users) each day to inform of pending overtime requests"
  task manager_email: :environment do
    # 1. Iterate over list of pending overtime requests (submitted, not approved or rejected)
    # 2. Check to see if there are any requests
    # 3. Iterate over the list of admin users/managers
    # 4. Send the email to each Admin
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
    end
  end

end
