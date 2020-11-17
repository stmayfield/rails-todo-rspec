require 'rails_helper'

feature "User creates todo" do
    scenario "successfully" do
        # first pass: 'visit root_path' route, which is currently #Todos#index
        sign_in
        create_todo("Buy milk")

        expect(page).to display_todo("Buy milk")
    end
end



# Rspec dsl used
# - expect(object).to

# capybara dsl used:
# - click_on 'String'
# - fill_in 'Label', with: 'Text'
# - have_css?(selector), type: 'Text' (rspec syntax)

# page expect
# <ul class='todos'>
#     <li>Buy milk</li>
# </ul>