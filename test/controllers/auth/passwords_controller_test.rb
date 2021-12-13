require "test_helper"

class Auth::PasswordsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get auth_passwords_edit_url
    assert_response :success
  end

  test "should get update" do
    get auth_passwords_update_url
    assert_response :success
  end
end
