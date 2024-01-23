require "test_helper"

class Api::CategoriesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test 'should get all categories of public APIs' do 
    get api_categories_path
    assert_response :success
    assert_not_empty JSON.parse(response.body)['data']
  end
end
