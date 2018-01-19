require 'test_helper'

class Categories2ControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get categories2_name_url
    assert_response :success
  end

end
