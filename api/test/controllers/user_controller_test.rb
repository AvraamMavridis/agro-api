require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get show,create" do
    get user_show,create_url
    assert_response :success
  end

end
