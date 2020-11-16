require 'rails_helper'

feature "User creates todo" do
    scenario "successfully" do
        # first pass: 'visit root_path' route, which is currently #Todos#index
        sign_in
        click_on 'Add a new todo'
        fill_in 'Title', with: 'Buy milk'
        click_on 'Submit'

        expect(page).to have_css '.todos li', text: 'Buy milk'
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