require "test_helper"

class Auth::PasswordResetsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get auth_password_resets_new_url
    assert_response :success
  end

  test "should get create" do
    get auth_password_resets_create_url
    assert_response :success
  end
end
