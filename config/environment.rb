# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :port           => ENV['MAILGUN _SMTP_PORT'],
  :addresses      => ENV['MAILGUN _SMTP_SERVER'],
  :user_name      => ENV['MAILGUN _SMTP_LOGIN'],
  :password       => ENV['MAILGUN _SMTP_PASSWORD'],
  :domain         => 'photo-app-dunne.herokuapp.com',
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp 
