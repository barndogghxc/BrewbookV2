require 'test_helper'

class YeastsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get yeasts_new_url
    assert_response :success
  end

end
