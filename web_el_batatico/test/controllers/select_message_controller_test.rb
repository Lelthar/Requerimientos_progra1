require 'test_helper'

class SelectMessageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get select_message_index_url
    assert_response :success
  end

end
