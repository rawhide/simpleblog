require 'test_helper'

class ::Admin::ArticlesControllerTest < ActionController::TestCase
  test "ログインしないと利用できないこと" do
    get :new
    assert_response :redirect
  end
end
