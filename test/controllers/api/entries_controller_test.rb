require "test_helper"

class Api::EntriesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test 'should get the list of all entries' do 
    get api_entries_path
    assert_response :success
    assert_not_empty JSON.parse(response.body)['data']
  end

  test 'should get entries by category' do
    get api_entries_path(category: 'art')
    assert_response :success
    assert_not_empty JSON.parse(response.body)['data']
  end

  test 'should get all entries that support HTTPS' do
    get api_supports_https_path
    assert_response :success
    assert_not_empty JSON.parse(response.body)['data']
  end

end
