require "test_helper"

class TentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tent = tents(:one)
  end

  test "should get index" do
    get tents_url
    assert_response :success
  end

  test "should get new" do
    get new_tent_url
    assert_response :success
  end

  test "should create tent" do
    assert_difference("Tent.count") do
      post tents_url, params: { tent: { integer: @tent.integer, name: @tent.name, string: @tent.string, volume: @tent.volume, weight: @tent.weight } }
    end

    assert_redirected_to tent_url(Tent.last)
  end

  test "should show tent" do
    get tent_url(@tent)
    assert_response :success
  end

  test "should get edit" do
    get edit_tent_url(@tent)
    assert_response :success
  end

  test "should update tent" do
    patch tent_url(@tent), params: { tent: { integer: @tent.integer, name: @tent.name, string: @tent.string, volume: @tent.volume, weight: @tent.weight } }
    assert_redirected_to tent_url(@tent)
  end

  test "should destroy tent" do
    assert_difference("Tent.count", -1) do
      delete tent_url(@tent)
    end

    assert_redirected_to tents_url
  end
end
