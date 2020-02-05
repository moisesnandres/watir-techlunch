require "watir"

b = Watir::Browser.new :firefox
b.goto "https://codesandbox.io/s/formik-example-o26nd"

b.iframe(id: "sandbox-preview").button(text: "Submit").click
b.iframe(id: "sandbox-preview").text_field(id: "email").set "Demo"
b.iframe(id: "sandbox-preview").div(class: "input-feedback").exists?
b.iframe(id: "sandbox-preview").text_field(id: "email").set "Demo@able.co"
b.iframe(id: "sandbox-preview").button(text: "Submit").click

# b = Watir::Browser.new :firefox
# b.goto "https://o26nd.csb.app/"

# b.button(text: "Submit").wait_until_present.click
# b.text_field(id: "email").set "Demo"
# b.div(class: "input-feedback").exists?
# b.text_field(id: "email").set "Demo@able.co"
# b.button(text: "Submit").click

sleep 2

b.alert.exists?
b.alert.ok

sleep 3

