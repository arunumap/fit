OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :fitbit, ENV["CONSUMER_KEY"], ENV["CONSUMER_SECRET"]
end