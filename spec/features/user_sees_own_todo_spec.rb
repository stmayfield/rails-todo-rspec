require 'rails_helper'

feature "User sees own todos" do
    scenario "Doesn't see other todos" do
        Todo.create!(title: 'Buy milk', email: 'mayfield@domain.com')

        sign_in_as "someone@example.com"
        
        expect(page).not_to have_css '.todos li', text:'Buy milk'
    end
end