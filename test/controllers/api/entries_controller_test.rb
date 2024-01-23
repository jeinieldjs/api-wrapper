require "test_helper"

class Api::EntriesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test 'should get the list of all public API entries' do 
    get api_entries_path
    assert_response :success
    assert_not_empty JSON.parse(response.body)['data']
  end

end
