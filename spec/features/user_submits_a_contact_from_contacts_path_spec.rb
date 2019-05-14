# spec/features/user_submits_a_contact_from_contacts_path_spec.rb

require_relative '../rails_helper'

RSpec.feature "User submits a Contact from Contacts Path" do

	scenario "they see the page of newly created Contact, full params submitted" do

		contact_title = "Absolutely New Contact"
		contact_address = "New Address"
		contact_description = "New Description"

		visit contacts_path

		click_link 'new_contact'

		expect(page.body).to include('Täze Kontakt Maglumatlary')

		fill_in("contact_title", with: contact_title)
		fill_in("contact_address", with: contact_address)
		fill_in("contact_description", with: contact_description)
		select("First Category", from: "contact_category_id")

		click_on 'Kabul Et'

		expect(page.body).to have_content contact_title
		
	end

	scenario 'they see an error message, when title is missing' do

		contact_address = "New Address"
		contact_description = "New Description"

		visit contacts_path

		click_link 'new_contact'

		expect(page.body).to include('Täze Kontakt Maglumatlary')

		fill_in("contact_address", with: contact_address)
		fill_in("contact_description", with: contact_description)

		click_on 'Kabul Et'

		expect(page.body).to have_content "Kontaktyň ady hökmany girizilmeli..."

	end

end