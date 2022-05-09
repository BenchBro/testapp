require "test_helper"

class TestcampingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testcamping = testcampings(:one)
  end

  test "should get index" do
    get testcampings_url
    assert_response :success
  end

  test "should get new" do
    get new_testcamping_url
    assert_response :success
  end

  test "should create testcamping" do
    assert_difference("Testcamping.count") do
      post testcampings_url, params: { testcamping: { carry: @testcamping.carry, name: @testcamping.name, volume: @testcamping.volume, weight: @testcamping.weight } }
    end

    assert_redirected_to testcamping_url(Testcamping.last)
  end

  test "should show testcamping" do
    get testcamping_url(@testcamping)
    assert_response :success
  end

  test "should get edit" do
    get edit_testcamping_url(@testcamping)
    assert_response :success
  end

  test "should update testcamping" do
    patch testcamping_url(@testcamping), params: { testcamping: { carry: @testcamping.carry, name: @testcamping.name, volume: @testcamping.volume, weight: @testcamping.weight } }
    assert_redirected_to testcamping_url(@testcamping)
  end

  test "should destroy testcamping" do
    assert_difference("Testcamping.count", -1) do
      delete testcamping_url(@testcamping)
    end

    assert_redirected_to testcampings_url
  end
end
