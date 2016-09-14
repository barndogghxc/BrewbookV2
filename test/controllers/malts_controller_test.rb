require 'test_helper'

class MaltsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get malts_new_url
    assert_response :success
  end

end
