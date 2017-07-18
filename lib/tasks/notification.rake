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

  	# no spaces or dashes or parentheses
  	# exactly 10 characters
  	# all characters must be a numbers
  end

end
