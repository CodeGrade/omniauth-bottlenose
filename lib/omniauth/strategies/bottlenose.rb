require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Bottlenose < OmniAuth::Strategies::OAuth2
      option :name, :bottlenose

      option :client_options, {
        site: 'https://handins.ccs.neu.edu',
        authorize_url: '/oauth/authorize?'
      }

      uid { raw_info['username'] }

      info do
        raw_info
      end

      def raw_info
        @raw_info ||= access_token.get('/api/me').parsed
      end

      # https://github.com/intridea/omniauth-oauth2/issues/81
      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end
