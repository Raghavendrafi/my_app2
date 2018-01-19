require 'test_helper'

class ProductImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_images_index_url
    assert_response :success
  end

  test "should get new" do
    get product_images_new_url
    assert_response :success
  end

  test "should get show" do
    get product_images_show_url
    assert_response :success
  end

end
