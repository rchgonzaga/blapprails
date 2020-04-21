require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get api/v1/dashboard" do
    get dashboard_api/v1/dashboard_url
    assert_response :success
  end

end
