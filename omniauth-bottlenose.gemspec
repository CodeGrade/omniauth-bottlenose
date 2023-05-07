Gem::Specification.new do |s|
  s.name = 'omniauth-bottlenose'
  s.version = '0.2.0'
  s.date = '2023-05-07'
  s.summary = 'OmniAuth provider for Bottlenose'
  s.authors = ['CodeGrade']
  s.files = `git ls-files`.split("\n")
  s.require_paths = ['lib']
  s.add_dependency 'omniauth-oauth2', '~> 1.8.0'
end
