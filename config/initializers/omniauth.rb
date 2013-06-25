OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '104320363072951', '07f57c83590239c7998937ab00467382'
end