require 'rails_helper'
RSpec.feature "adding post" do
    scenario "allow a user to add a post" do
        visit posts_new_path

        fill_in "Title", with: "Rspec Introduction"
        fill_in "Body", with: "This is my post about Rspec"

        click_on("Create Post")

        expect(page).to have_content("Rspec Introduction")
        expect(page).to have_content("This is my post about Rspec")
    end
end