require 'test_helper'

class WebscrapeControllerTest < ActionController::TestCase
  test "should get interesting" do
    get :interesting
    assert_response :success
  end

end
