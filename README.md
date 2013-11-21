# CiUY

A gem to validate Uruguayan Identity Documents (Cedula de Identidad Uruguaya)

https://rubygems.org/gems/ci_uy

Install:

`gem install ci_uy`

Use:
``` ruby
fernando@hoth ~ $ irb
1.9.3-p286 :001 > require 'ci_uy'
 => true
1.9.3-p286 :002 > CiUY.validate("1.111.111-1")
 => true
1.9.3-p286 :003 > CiUY.validation_digit("2222222")
 => "2"
1.9.3-p286 :004 > CiUY.random
 => "13082956"
 ```
