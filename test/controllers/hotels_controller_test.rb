require "test_helper"

class HotelsControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get hotels_hello_url
    assert_response :success
  end
end
