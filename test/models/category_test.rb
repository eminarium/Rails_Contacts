require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@category_1 = categories(:first_cat)
  	@category_2 = categories(:second_cat)
  end

  def test_valid_category_with_full_params
  	category = Category.new(title: "Test Title", icon_type: "fa-test-icon", description: "Category description")
  	assert category.valid?
  end

  def test_valid_fixture_categories
  	assert @category_1.valid?
  	assert @category_2.valid?

  	assert_equal 2, Category.all.count
  end

  def test_invalid_category_without_any_parameter
  	category = Category.new
  	assert_not category.valid?
  end

  def test_invalid_category_without_title
  	category = Category.new(icon_type: "fa-test-icon", description: "Category description")
  	assert_not category.valid?
  end

  def test_invalid_category_with_blank_title
  	category = Category.new(title: "", icon_type: "fa-test-icon", description: "Category description")
  	assert_not category.valid?
  end

  def test_category_update_invalid_with_blank_title
  	skip "Update invalid with blank title test is skipped / validate_presence_of does not work for this"
  	@category_1.update_attribute(:title, "")

  	assert_equal false, @category_1.update_attribute(:title, "")
  	assert_equal "First Category", @category_1.title
  end

end
