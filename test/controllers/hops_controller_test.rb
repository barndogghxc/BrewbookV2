require 'test_helper'

class HopsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get hops_new_url
    assert_response :success
  end

end
