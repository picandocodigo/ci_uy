# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name                  = 'ci_uy'
  s.version               = '1.0.1'
  s.summary               = 'CiUY Validate Uruguayan cedula numbers'
  s.description           = 'A gem to validate Uruguayan Identity Documents (Cedula de ' \
    'Identidad Uruguaya)'
  s.required_ruby_version = '>= 2.5'
  s.authors               = ['Fernando Briano']
  s.email                 = 'fernando@picandocodigo.net'
  s.files                 = ['lib/ci_uy.rb']
  s.homepage              = 'https://github.com/picandocodigo/ci_uy'
  s.licenses              = ['LGPL-2.1']
  s.executables << 'ci_uy'
  s.metadata = {
    'homepage_uri' => 'https://github.com/picandocodigo/ci_uy/',
    'changelog_uri' => 'https://github.com/picandocodigo/ci_uy/blob/master/CHANGELOG',
    'source_code_uri' => 'https://github.com/picandocodigo/ci_uy/',
    'bug_tracker_uri' => 'https://github.com/picandocodigo/ci_uy/issues'
  }
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rubocop'
end
