require 'test_helper'

class PlantTypeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get plant_type_index_url
    assert_response :success
  end

end
