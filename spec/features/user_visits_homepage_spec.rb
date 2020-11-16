require 'rails_helper'

# Rspec provides "describe" and "it" methods for rails testing
# Capybara provides "feature" and "scenario" methods for browser interaction

feature "User visits homepage" do
    scenario "successfully" do
        visit root_path

        expect(page).to have_css 'h1', text: 'Todos'
    end
end


# Rspec dsl used
# - expect(object)
# - .to()


# capybara dsl used:
# - have_css?(selector), type: 'Text' (rspec syntax)
# - visit

