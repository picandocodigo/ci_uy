Gem::Specification.new do |s|
  s.name        = 'ci_uy'
  s.version     = '0.1.0'
  s.date        = '2014-04-08'
  s.summary     = "CiUY Validate Uruguayan cedula numbers"
  s.description = "A gem to validate Uruguayan Identity Documents (Cedula de Identidad Uruguaya)"
  s.authors     = ["Fernando Briano"]
  s.email       = 'fernando@picandocodigo.net'
  s.files       = ["lib/ci_uy.rb"]
  s.homepage    = 'https://github.com/picandocodigo/ci_uy'
  s.licenses    = ['LGPL-3.0']
  s.post_install_message = "Thanks for installing CiUY!"
  s.executables << 'ci_uy'
  s.add_development_dependency 'minitest', '~> 5.3'
end
