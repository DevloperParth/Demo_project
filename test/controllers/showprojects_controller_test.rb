require "test_helper"

class ShowprojectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get showprojects_index_url
    assert_response :success
  end
end
