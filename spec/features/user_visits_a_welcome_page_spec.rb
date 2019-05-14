# spec/features/user_visits_a_welcome_page_spec.rb

require_relative '../rails_helper'

RSpec.feature "User visits a Welcome Page" do
	scenario "they see the search field" do
		visit '/'

		expect(page).to have_selector("#search_input")
	end

	scenario "they see All Contacts button" do
		visit '/'

		expect(page).to have_button("Ähli Kontaktlar")
	end

	scenario "they see New Contact button" do
		visit '/'

		expect(page).to have_button("Täze Kontakt")
	end	
end