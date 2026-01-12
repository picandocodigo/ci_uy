# CiUY
[![Gem Version](https://badge.fury.io/rb/ci_uy.svg)](http://badge.fury.io/rb/ci_uy)
[![Unit tests](https://github.com/picandocodigo/ci_uy/actions/workflows/ruby.yml/badge.svg?branch=main)](https://github.com/picandocodigo/ci_uy/actions/workflows/ruby.yml)
[![Rubocop](https://github.com/picandocodigo/ci_uy/actions/workflows/rubocop.yml/badge.svg?branch=main)](https://github.com/picandocodigo/ci_uy/actions/workflows/rubocop.yml)
[![Codeberg](https://github.com/user-attachments/assets/ff74aac7-a7af-4918-bb58-e2d0b2427d66)](https://codeberg.org/picandocodigo/ci_uy)

## Español:
Una gema para validar números de Cédula de Identidad Uruguaya - https://rubygems.org/gems/ci_uy

La gema recibe una cadena de caracteres (o número entero) y no le importa cómo estén separados los dígitos, extrae los números de la cadena de caracteres y chequea el dígito verificador. Así que todos estos formatos son válidos: `1.111.111-1`, `1_111_111_1`, `1.111.111/1`.

El algoritmo de validación es: Multiplicar cada dígito por 2, 9, 8, 7, 6, 3, 4 uno a uno, después a 10 restarle el resto de la división de la suma de la primera operación entre 10: `10 - (sum mod 10)`. Esta operación nos da el dígito verificador. Los números de cédula válidos deben tener 6 o 7 dígitos.

Se puede probar una interfaz gráfica de usuario para la gema en el directorio [ci_ui](https://github.com/picandocodigo/ci_uy/tree/master/ci_ui).

## English

A gem to validate Uruguayan Identity Documents (Cedula de Identidad Uruguaya) - https://rubygems.org/gems/ci_uy

The gem receives a string (or integer) and doesn't care what you use to separate the digits, it gets the numbers from the string and checks the verification digit. So all of these formats are valid: `1.111.111-1`, `1_111_111_1`, `1.111.111/1`.

The validation algorithm is: Multiply each digit by 2, 9, 8, 7, 6, 3, 4 one to one. Then substract the remainder of the division between the sum of the first operation and 10 to 10: `10 - (sum mod 10)`. This operation gives you the verification digit. Valid CI numbers must have 6 or 7 digits.

You can check out a graphical user interface for the gem in the [ci_ui](https://github.com/picandocodigo/ci_uy/tree/master/ci_ui) directory.

## Instalación/Install:

```bash
$ gem install ci_uy
```

## Uso/Usage:
``` ruby
fernando@hoth ~ $ rake console
1.9.3-p484 :001 > CiUY.validate("1.111.111-1")
 => true
1.9.3-p484 :002 > CiUY.validation_digit("2222222")
 => "2"
1.9.3-p484 :003 > CiUY.random
 => "13082956"
 ```

🇺🇾 Una vez instalada en el sistema, también se puede usar el comando `ci_uy` desde la línea de comando:

🏴󠁧󠁢󠁳󠁣󠁴󠁿 Once the gem is installed in your system, you can also use the `ci_uy` command from the command line:

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
