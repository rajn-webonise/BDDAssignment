require 'test_helper'

class SortControllerControllerTest < ActionController::TestCase
  test "should get sort" do
    get :sort
    assert_response :success
  end

  test "should get result" do
    get :result
    assert_response :success
  end

end
