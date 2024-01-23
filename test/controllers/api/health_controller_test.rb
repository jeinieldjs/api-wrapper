require "test_helper"

class Api::HealthControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test 'should get health status of API' do 
    get api_health_path
    assert_response :success
    assert_not_empty JSON.parse(response.body)['data']
  end
end
