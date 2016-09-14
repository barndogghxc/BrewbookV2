require 'test_helper'

class BrewsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get brews_new_url
    assert_response :success
  end

end
