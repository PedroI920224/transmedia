require 'rails_helper'

feature "Home Exams", :type => :feature do
  scenario "should render Exams styled home" do
    visit root_path
    expect(page).to have_content("Hola mundo :D")
  end
end
