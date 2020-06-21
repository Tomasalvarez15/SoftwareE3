require 'test_helper'

class EqualsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equal = equals(:one)
  end

  test "should get index" do
    get equals_url
    assert_response :success
  end

  test "should get new" do
    get new_equal_url
    assert_response :success
  end

  test "should create equal" do
    assert_difference('Equal.count') do
      post equals_url, params: { equal: { estado: @equal.estado, liked: @equal.liked, liker: @equal.liker } }
    end

    assert_redirected_to equal_url(Equal.last)
  end

  test "should show equal" do
    get equal_url(@equal)
    assert_response :success
  end

  test "should get edit" do
    get edit_equal_url(@equal)
    assert_response :success
  end

  test "should update equal" do
    patch equal_url(@equal), params: { equal: { estado: @equal.estado, liked: @equal.liked, liker: @equal.liker } }
    assert_redirected_to equal_url(@equal)
  end

  test "should destroy equal" do
    assert_difference('Equal.count', -1) do
      delete equal_url(@equal)
    end

    assert_redirected_to equals_url
  end
end
