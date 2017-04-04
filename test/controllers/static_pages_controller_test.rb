require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "twitterWithCurses"
  end

  test "should get root" do
    get static_pages_home_url
    assert_response :success 
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get login" do
    get static_pages_login_url
    assert_response :success
    assert_select "title", "Login | #{@base_title}"
  end

  test "should get signup" do
    get static_pages_signup_url
    assert_response :success
    assert_select "title", "Signup | #{@base_title}"
  end


  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
end
