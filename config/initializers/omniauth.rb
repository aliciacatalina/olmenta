OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, ENV['307270812784789'], ENV['5eea92c0ddc5f83687c01f85bb6203be']
end