require 'test_helper'

class PhoneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@phone_1 = phones(:phone_no_one)
  	@phone_2 = phones(:phone_no_two)
  end

  def test_valid_texture_phones
  		assert @phone_1.valid?
  		assert @phone_2.valid?
  end

  def test_invalid_phone_without_phone_no
  		@phone = Phone.new(phone_type_id: 1, contact_id: 1, notes: "My home no")

  		assert_not @phone.valid?
  end

  def test_invalid_phone_without_contact_id
  		@phone = Phone.new(phone_type_id: 1, phone_no: "+99365256414", notes: "My home no")

  		assert_not @phone.valid?
  end

  def test_invalid_phone_without_phone_type_id
  		@phone = Phone.new(phone_no: "+99365251487", contact_id: 1, notes: "My home no")

  		assert_not @phone.valid?
  end


end
