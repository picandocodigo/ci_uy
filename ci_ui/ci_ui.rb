# frozen_string_literal: true

require 'libui'
require 'ci_uy'

UI = LibUI
UI.init

MAIN_WINDOW = UI.new_window('Validador de cédulas de identidad 🇺🇾', 400, 90, 1)

# Elements in first tab
vbox = UI.new_vertical_box
UI.box_set_padded(vbox, 3)
UI.window_set_child(MAIN_WINDOW, vbox)

lbl_result = UI.new_label('')

# Callback for validating the number when text is entered
text_changed_callback = proc do |ptr|
  input = UI.entry_text(ptr)
  valid = CiUY.validate(input.to_s)
  UI.label_set_text(lbl_result, valid ? '✅ - Número Válido' : '❌ - Número no válido')
end

txt_validate = UI.new_entry
UI.entry_on_changed(txt_validate, text_changed_callback, nil)

hbox1 = UI.new_vertical_box
UI.box_append(hbox1, UI.new_label('Ingrese un número de cédula'), 0)
UI.box_append(hbox1, txt_validate, 1)
UI.box_append(hbox1, lbl_result, 1)

# Elements in second tab
hbox2 = UI.new_vertical_box
btn_random = UI.new_button('Obtener número de cédula al azar')
txt_random_number = UI.new_entry
button_clicked_callback = proc do
  number = CiUY.random.to_s
  UI.entry_set_text(txt_random_number, number)
  0
end
UI.button_on_clicked(btn_random, button_clicked_callback, nil)
UI.box_append(hbox2, btn_random, 0)
UI.box_append(hbox2, txt_random_number, 0)

# Create tab menu and append elements
tab = UI.new_tab
UI.tab_append(tab, 'Validador', hbox1)
UI.tab_append(tab, 'Cédula al azar', hbox2)
UI.box_append(vbox, tab, 1)

# Show main window
UI.control_show(MAIN_WINDOW)

# Cleanup when closing
UI.window_on_closing(MAIN_WINDOW) do
  UI.control_destroy(MAIN_WINDOW)
  UI.quit
  0
end

UI.main
UI.quit
