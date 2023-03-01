require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get schedule" do
    get users_schedule_url
    assert_response :success
  end

end
