require 'test_helper'

class PrimaryWeaponsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get primary_weapons_index_url
    assert_response :success
  end

end
