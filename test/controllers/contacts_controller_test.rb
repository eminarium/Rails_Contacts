require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @contact = contacts(:first_contact)
  end

  test 'shoudl get index' do
    get contacts_url

    assert_response :success
  end

  test 'should show contact' do
    get contact_url(@contact)

    assert_response :success
  end

  test 'should get new' do
    get new_contact_url

    assert_response :success
  end

  test 'should create contact' do
    assert_difference('Contact.count') do
      post contacts_url, params: { contact: { title: @contact.title, address: @contact.address, description: @contact.description, category_id: @contact.category_id }}
    end

    assert_redirected_to contact_url(Contact.last)
  end 

  test 'should edit contact' do
    get edit_contact_url(@contact)

    assert_response :success
  end

  test 'should update contact' do
    patch contact_url(@contact), params: { contact: { title: @contact.title, address: @contact.address, description: @contact.description, category_id: @contact.category_id }}

    assert_redirected_to contact_url(@contact)
  end

  test 'should destroy contact' do
    #skip "contact deletion is temporarily skipped"
    assert_difference('Contact.count', -1) do
      delete contact_url(@contact)
    end

    assert_redirected_to contacts_url
  end

end