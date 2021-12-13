require "test_helper"

class TwitterAccountsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twitter_accounts_index_url
    assert_response :success
  end
end
