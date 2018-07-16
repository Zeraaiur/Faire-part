require 'test_helper'

class FairePartsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get faire_parts_index_url
    assert_response :success
  end

  test "should get show" do
    get faire_parts_show_url
    assert_response :success
  end

end
