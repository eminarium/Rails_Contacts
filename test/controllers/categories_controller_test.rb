require 'test_helper'
require 'minitest/autorun'

class CategoriesControllerTest < ActionDispatch::IntegrationTest

  #test "should get index" do
    #get categories_index_url
    #assert_response :success
  #end

  def test_index
  	get :index

  	assert_response :success
  	assert_not_nil assigns(:categories)
  end

end
