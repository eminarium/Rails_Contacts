require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@contact_1 = contacts(:first_contact)
  	@contact_2 = contacts(:second_contact)
  end

  def test_fixture_contacts_are_valid
  	assert @contact_1.valid?
  	assert @contact_2.valid?
  end

  def test_invalid_contact_without_title
  	@new_contact = Contact.new(category_id: 1, description: "Just a new contact", address: "Contact Address")

  	assert_not @new_contact.valid?
  end

end
