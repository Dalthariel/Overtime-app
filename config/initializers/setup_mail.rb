ActionMailer::Base.smtp_settings = {
		# fix these to whatever email program I end up using
    # :port =>           ENV['SPARKPOST_SMTP_PORT'],
    # :address =>        ENV['SPARKPOST_SMTP_HOST'],
    # :user_name =>      ENV['SPARKPOST_SMTP_USERNAME'],
    # :password =>       ENV['SPARKPOST_SMTP_PASSWORD'],
    # :authentication => :login,
    # :enable_starttls_auto => true
}
ActionMailer::Base.delivery_method = :smtp