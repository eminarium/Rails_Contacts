require 'test_helper'

class PhoneTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@mobile_phone = phone_types(:first_type)
  	@home_phone = phone_types(:second_type)
  end

  def test_valid_phone_type_with_title
  	assert @mobile_phone.valid?
  	assert @home_phone.valid?

  	assert_equal 2, PhoneType.all.count
  end

  def test_invalid_phone_type_without_title
  	@phone_type = PhoneType.new(icon_type: "fa-mobile")

  	assert_not @phone_type.valid?
  end

  def test_invalid_phone_type_without_icon_type
  	@phone_type = PhoneType.new(title: "Mobile")

  	assert_not @phone_type.valid?
  end

end
