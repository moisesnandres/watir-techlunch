require "watir"

b = Watir::Browser.new :chrome, headless: true
b.goto "https://translate.google.com/?hl=es#view=home&op=translate&sl=en&tl=es"
textarea = b.textarea id: "source"
textarea.set "Hello everyone! Today's techlunch is about Watir"
listen = b.div(aria_label: "Escuchar")
listen.click

sleep 5
