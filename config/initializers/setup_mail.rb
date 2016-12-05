ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              => 'smtp.sendgrid.net',
  :port                 => '587',
  :authentication       => :plain ,
  :user_name            => 'app60156923@heroku.com',
  :password             => 'y2ptgpsq7902',
  :domain               => 'heroku.com',
  :enable_starttls_auto => true
}
