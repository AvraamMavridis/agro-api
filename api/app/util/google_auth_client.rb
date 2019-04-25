# frozen_string_literal: true
module GoogleAuthClient
  extend self
  GOOGLE_AUTH_URL = "https://www.googleapis.com/oauth2/v3".freeze

  def get_google_profile(access_token)
    response = HTTParty.get("#{GOOGLE_AUTH_URL}/userinfo?access_token=#{access_token}")
    response.success? ? Profile.new(response.parsed_response) : nil
  end
end
