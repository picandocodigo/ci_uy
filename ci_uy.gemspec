Gem::Specification.new do |s|
  s.name        = 'ci_uy'
  s.version     = '0.1.3'
  s.date        = '2018-04-11'
  s.summary     = 'CiUY Validate Uruguayan cedula numbers'
  s.description = 'A gem to validate Uruguayan Identity Documents (Cedula de Identidad Uruguaya)'
  s.authors     = ['Fernando Briano']
  s.email       = 'fernando@picandocodigo.net'
  s.files       = ['lib/ci_uy.rb']
  s.homepage    = 'https://github.com/picandocodigo/ci_uy'
  s.licenses    = ['LGPL-2.1']
  s.post_install_message = <<~MESSAGE

    Thanks for installing CiUY!

    Warning: Since version 0.1.3, numbers with less than 6 digits are not valid.
    Atención: Desde la versión 0.1.3 los números con menos de 6 dígitos no son válidos.

  MESSAGE
  s.executables << 'ci_uy'
end
