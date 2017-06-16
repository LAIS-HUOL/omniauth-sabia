# encoding: utf-8
require 'omniauth-oauth2'
require 'oauth2'

module OmniAuth
  module Strategies
    class Sabia < OmniAuth::Strategies::OAuth2
      option :client_options, {
          :site => 'https://login.sabia.ufrn.br',
          :authorize_url => '/oauth/authorize/',
          :token_url => '/oauth/token/'
      }

      def authorize_params
        super.tap do |params|
          if request.params['scope']
            params['scope'.to_sym] = request.params['scope']
          end
        end
      end

      uid { raw_info['cpf'] }

      info do
        {
            nickname: raw_info['login'],
            name: raw_info['name'],
            email: raw_info['email'],
            avatar: raw_info['avatar_url'],
        }
      end

      extra do
        {:raw_info => raw_info}
      end

      def raw_info
        @raw_info ||= access_token.post('/api/perfil/dados/',
                                        :headers => {'Content-Type' => 'application/x-www-form-urlencoded'},
                                        :body => {scope: 'cpf email dados_publicos cnes receita_federal'}).parsed
      end

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end

OmniAuth.config.add_camelization 'sabia', 'Sabiá'
