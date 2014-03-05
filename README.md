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
 
 Once the gem is installed in your system, you can use 'ci_uy' from
 the command line:
 
 ```
$ gem install ci_uy-0.0.6.gem 
Thanks for installing CiUY!
Successfully installed ci_uy-0.0.6
1 gem installed
Installing ri documentation for ci_uy-0.0.6...
Building YARD (yri) index for ci_uy-0.0.6...
Installing RDoc documentation for ci_uy-0.0.6...
$ ci_uy random
47063714
$ ci_uy validate "11111111"
true
$ ci_uy validation_digit "2.222.222"
2
 ```
