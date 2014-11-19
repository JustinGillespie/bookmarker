module Api
	class BaseController < ApplicationController

		skip_before_action :verify_authenticity_token
		before_action :authorize

		private

		def authorize
			authenticate_or_request_with_http_token do |token, options|
				ApiKey.exists?(access_token: token)
  		end
		end

	end
end
