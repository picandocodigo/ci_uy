# CiUY

A gem to validate Uruguayan Identity Documents (Cedula de Identidad Uruguaya)

https://rubygems.org/gems/ci_uy

Install:

`gem install ci_uy`

Use:
``` ruby
fernando@hoth ~ $ irb
1.9.3p194 :001 > require 'ci_uy'
 => true 
1.9.3p194 :002 > CiUY.validate_ci("1.111.111-1")
 => true 
1.9.3p194 :003 > CiUY.get_validation_digit("2222222")
 => "2" 
 ```
