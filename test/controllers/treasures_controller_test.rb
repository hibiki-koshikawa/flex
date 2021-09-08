require 'test_helper'

class TreasuresControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get treasures_new_url
    assert_response :success
  end

end
