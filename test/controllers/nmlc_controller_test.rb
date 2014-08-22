require 'test_helper'

class NmlcControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
