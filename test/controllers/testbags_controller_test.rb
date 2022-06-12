require "test_helper"

class TestbagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testbag = testbags(:one)
  end

  test "should get index" do
    get testbags_url
    assert_response :success
  end

  test "should get new" do
    get new_testbag_url
    assert_response :success
  end

  test "should create testbag" do
    assert_difference("Testbag.count") do
      post testbags_url, params: { testbag: { bagweight: @testbag.bagweight, carry: @testbag.carry, maxweight: @testbag.maxweight, minweight: @testbag.minweight, name: @testbag.name, volume: @testbag.volume } }
    end

    assert_redirected_to testbag_url(Testbag.last)
  end

  test "should show testbag" do
    get testbag_url(@testbag)
    assert_response :success
  end

  test "should get edit" do
    get edit_testbag_url(@testbag)
    assert_response :success
  end

  test "should update testbag" do
    patch testbag_url(@testbag), params: { testbag: { bagweight: @testbag.bagweight, carry: @testbag.carry, maxweight: @testbag.maxweight, minweight: @testbag.minweight, name: @testbag.name, volume: @testbag.volume } }
    assert_redirected_to testbag_url(@testbag)
  end

  test "should destroy testbag" do
    assert_difference("Testbag.count", -1) do
      delete testbag_url(@testbag)
    end

    assert_redirected_to testbags_url
  end
end
