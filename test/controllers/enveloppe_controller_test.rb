require 'test_helper'

class EnveloppeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get enveloppe_new_url
    assert_response :success
  end

  test "should get create" do
    get enveloppe_create_url
    assert_response :success
  end

  test "should get edit" do
    get enveloppe_edit_url
    assert_response :success
  end

  test "should get update" do
    get enveloppe_update_url
    assert_response :success
  end

end
