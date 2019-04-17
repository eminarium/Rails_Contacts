require 'test_helper'

class PhonesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @phone = phones(:phone_no_one)
  end

  test "should get new" do
    get new_phone_url
    assert_response :success
  end

  test "should get create" do
    assert_difference('Phone.count') do
      post phones_url, params: { phone: { phone_no: @phone.phone_no, phone_type_id: @phone.phone_type_id, contact_id: @phone.contact_id } }
    end

    assert_redirected_to phone_url(Phone.last)
  end

  test "should get edit" do
    get edit_phone_url

    assert_response :success
  end

  test "should get destroy" do
    assert_difference('Phone.count', -1) do
      delete phone_url(@phone)
    end

    assert_redirected_to phones_url
  end

  test "should get update" do
    patch phone_url(@phone), params: { phone: {  phone_no: @phone.phone_no, phone_type_id: @phone.phone_type_id, contact_id: @phone.contact_id  }}

    assert_redirected_to phone_url(@phone)
  end

end
