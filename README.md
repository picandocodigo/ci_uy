# CiUY

A gem to validate Uruguayan Identity Documents (Cedula de Identidad Uruguaya)

https://rubygems.org/gems/ci_uy

Install:

`gem install ci_uy`

Try it:
``` ruby
fernando@hoth ~ $ rake console
1.9.3-p484 :001 > CiUY.validate("1.111.111-1")
 => true
1.9.3-p484 :002 > CiUY.validation_digit("2222222")
 => "2"
1.9.3-p484 :003 > CiUY.random
 => "13082956"
 ```
