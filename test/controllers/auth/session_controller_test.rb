require "test_helper"

class Auth::SessionControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get auth_session_destroy_url
    assert_response :success
  end
end
