require "test_helper"

class TesthashesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testhash = testhashes(:one)
  end

  test "should get index" do
    get testhashes_url
    assert_response :success
  end

  test "should get new" do
    get new_testhash_url
    assert_response :success
  end

  test "should create testhash" do
    assert_difference("Testhash.count") do
      post testhashes_url, params: { testhash: { string: @testhash.string, test1: @testhash.test1, test2: @testhash.test2, test3: @testhash.test3, test4: @testhash.test4, test5: @testhash.test5 } }
    end

    assert_redirected_to testhash_url(Testhash.last)
  end

  test "should show testhash" do
    get testhash_url(@testhash)
    assert_response :success
  end

  test "should get edit" do
    get edit_testhash_url(@testhash)
    assert_response :success
  end

  test "should update testhash" do
    patch testhash_url(@testhash), params: { testhash: { string: @testhash.string, test1: @testhash.test1, test2: @testhash.test2, test3: @testhash.test3, test4: @testhash.test4, test5: @testhash.test5 } }
    assert_redirected_to testhash_url(@testhash)
  end

  test "should destroy testhash" do
    assert_difference("Testhash.count", -1) do
      delete testhash_url(@testhash)
    end

    assert_redirected_to testhashes_url
  end
end
