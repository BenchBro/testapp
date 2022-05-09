require "test_helper"

class SleepingbagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sleepingbag = sleepingbags(:one)
  end

  test "should get index" do
    get sleepingbags_url
    assert_response :success
  end

  test "should get new" do
    get new_sleepingbag_url
    assert_response :success
  end

  test "should create sleepingbag" do
    assert_difference("Sleepingbag.count") do
      post sleepingbags_url, params: { sleepingbag: { integer: @sleepingbag.integer, integer,: @sleepingbag.integer,, name: @sleepingbag.name, string,: @sleepingbag.string,, volume: @sleepingbag.volume, weight: @sleepingbag.weight } }
    end

    assert_redirected_to sleepingbag_url(Sleepingbag.last)
  end

  test "should show sleepingbag" do
    get sleepingbag_url(@sleepingbag)
    assert_response :success
  end

  test "should get edit" do
    get edit_sleepingbag_url(@sleepingbag)
    assert_response :success
  end

  test "should update sleepingbag" do
    patch sleepingbag_url(@sleepingbag), params: { sleepingbag: { integer: @sleepingbag.integer, integer,: @sleepingbag.integer,, name: @sleepingbag.name, string,: @sleepingbag.string,, volume: @sleepingbag.volume, weight: @sleepingbag.weight } }
    assert_redirected_to sleepingbag_url(@sleepingbag)
  end

  test "should destroy sleepingbag" do
    assert_difference("Sleepingbag.count", -1) do
      delete sleepingbag_url(@sleepingbag)
    end

    assert_redirected_to sleepingbags_url
  end
end
