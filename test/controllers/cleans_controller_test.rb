require 'test_helper'

class CleansControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cleans_new_url
    assert_response :success
  end

end
