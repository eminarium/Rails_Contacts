require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest

  #test "should get index" do
    #get categories_index_url
    #assert_response :success
  #end

  def test_index
  	#get categories_index_url
  	get root_url

  	assert_response :success
  	assert_not_nil assigns(:categories)
  end

  #test "should get index" do
    #get categories_index_url
    #assert_response :success
  #end

end
