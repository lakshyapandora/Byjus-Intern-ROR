require 'test_helper'

class IntrosControllerTest < ActionDispatch::IntegrationTest
  test "should get lakshya" do
    get intros_lakshya_url
    assert_response :success
  end

end
