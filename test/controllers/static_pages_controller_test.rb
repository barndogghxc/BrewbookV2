require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get materials" do
    get static_pages_materials_url
    assert_response :success
  end

  test "should get schedules" do
    get static_pages_schedules_url
    assert_response :success
  end

  test "should get malts" do
    get static_pages_malts_url
    assert_response :success
  end

  test "should get hops" do
    get static_pages_hops_url
    assert_response :success
  end

  test "should get yeast" do
    get static_pages_yeast_url
    assert_response :success
  end

  test "should get brews" do
    get static_pages_brews_url
    assert_response :success
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
  end

  test "should get cleans" do
    get static_pages_cleans_url
    assert_response :success
  end

end
