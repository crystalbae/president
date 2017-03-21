OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '403383773360454', '4da86e2165b1b310dd21608722f4807d'
end
