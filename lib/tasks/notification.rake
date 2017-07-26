namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    if Time.now.sunday?
      employees = Employee.all
      notification_message = "Please log into the overtime management dashboard to submit overtime for approval, or confirm your hours for last week: https://dlh-overtime-webapp.herokuapp.com"
      employees.each do |employee|
        SmsTool.send_sms(number: employee.phone, message: notification_message)
      end
      # ✔ Schedule to run Sunday at 5pm
      # ✔ Iterate over all employees
      # Skip AdminUsers
      # ✔ Send a message w/ instructions and a link to log time
      # ✔ User.all.each do |user, phone|
      #   SmsTool.send_sms(user, phone)
      # end
    end
  	
  end

  desc "Sends mail notifications to managers (admin users) each day to inform of pending overtime requests"
  task manager_email: :environment do

    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
    end
  end

end
