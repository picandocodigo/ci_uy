# CiUY
[![Gem Version](https://badge.fury.io/rb/ci_uy.svg)](http://badge.fury.io/rb/ci_uy)
[![Build Status](https://travis-ci.org/picandocodigo/ci_uy.svg?branch=master)](https://travis-ci.org/picandocodigo/ci_uy)
[![Code Climate](https://codeclimate.com/github/picandocodigo/ci_uy.png)](https://codeclimate.com/github/picandocodigo/ci_uy)

A gem to validate Uruguayan Identity Documents (Cedula de Identidad
Uruguaya) - https://rubygems.org/gems/ci_uy

Install:

```bash
$ gem install ci_uy
```

Usage:
``` ruby
fernando@hoth ~ $ rake console
1.9.3-p484 :001 > CiUY.validate("1.111.111-1")
 => true
1.9.3-p484 :002 > CiUY.validation_digit("2222222")
 => "2"
1.9.3-p484 :003 > CiUY.random
 => "13082956"
 ```

Once the gem is installed in your system, you can also use 'ci_uy'
from the command line:

```bash
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

## LICENSE
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
