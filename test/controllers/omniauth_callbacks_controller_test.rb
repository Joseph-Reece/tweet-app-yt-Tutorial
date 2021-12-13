require "test_helper"

class OmniauthCallbacksControllerTest < ActionDispatch::IntegrationTest
  test "should get twitter" do
    get omniauth_callbacks_twitter_url
    assert_response :success
  end
end
