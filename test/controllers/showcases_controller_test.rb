require 'test_helper'

class ShowcasesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get showcases_new_url
    assert_response :success
  end

end
