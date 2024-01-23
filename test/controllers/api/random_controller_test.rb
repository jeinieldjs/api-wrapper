require "test_helper"

class Api::RandomControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test 'should get random entry' do 
    get api_random_path
    assert_response :success
    assert_not_empty JSON.parse(response.body)['data']
  end

end
