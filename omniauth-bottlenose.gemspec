$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name = 'omniauth-bottlenose'
  s.version = '0.1.0'
  s.date = '2020-05-19'
  s.summary = 'OmniAuth provider for Bottlenose'
  s.authors = ['CodeGrade']
  s.files = [
    'lib/omniauth/strategies/bottlenose.rb'
  ]
  s.require_paths = ['lib']
  s.add_dependency 'omniauth-oauth2', '~> 1.6.0'
end
