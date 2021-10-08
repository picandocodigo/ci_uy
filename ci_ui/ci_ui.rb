# frozen_string_literal: true

require 'glimmer-dsl-libui'
require 'ci_uy'

include Glimmer

window('Validador de cédulas de identidad 🇺🇾', 400, 90) {
  vertical_box {
    tab {
      tab_item('Validador') {
        vertical_box {
          label('Ingrese un número de cédula') {
            stretchy false
          }

          @text_validate = entry {
            on_changed do
              input = @text_validate.text
              valid = CiUY.validate(input.to_s)
              @lbl_result.text = valid ? '✅ - Número Válido' : '❌ - Número no válido'
            end
          }

          @lbl_result = label
        }
      }

      tab_item('Cédula al azar') {
        vertical_box {
          button('Obtener número de cédula al azar') {
            stretchy false

            on_clicked do
              number = CiUY.random.to_s
              @txt_random_number.text = number
            end
          }

          @txt_random_number = entry {
            stretchy false
          }
        }
      }
    }
  }
}.show
