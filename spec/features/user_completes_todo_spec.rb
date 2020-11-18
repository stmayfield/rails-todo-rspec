require 'rails_helper'

feature "User completes todo" do
    scenario "successfully" do
        sign_in
        create_todo("Buy milk")

        click_on 'Mark complete'

        expect(page).to display_completed_todo("Buy milk")
    end
end



=begin
- sign in
- create a todo
- click a link marking complete
- verify via DOM that todo is completed

- add class "completed" to the <li>
- css that adds a strikethrough
=end

# Test line
